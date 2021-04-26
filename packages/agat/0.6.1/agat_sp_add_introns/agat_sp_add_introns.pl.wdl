version 1.0

task AgatSpAddIntronspl {
  input {
    File? ref_file
    File? output_gff_file
    String features_dot
  }
  command <<<
    agat_sp_add_introns_pl \
      ~{features_dot} \
      ~{if defined(ref_file) then ("-reffile " +  '"' + ref_file + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0"
  }
  parameter_meta {
    ref_file: "Input GTF/GFF file."
    output_gff_file: "Output gff3 file where the gene incriminated will be write."
    features_dot: "Usage:\\nagat_sp_add_introns.pl --gff infile --out outFile\\nagat_sp_add_introns.pl --help"
  }
  output {
    File out_stdout = stdout()
    File out_output_gff_file = "${in_output_gff_file}"
  }
}