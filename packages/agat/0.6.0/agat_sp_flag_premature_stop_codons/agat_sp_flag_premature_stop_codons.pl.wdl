version 1.0

task AgatSpFlagPrematureStopCodonspl {
  input {
    File? ref_file
    File? fast_a
    Int? codon
    File? output_gff_file
    String agat_sp_flag_premature_stop_codons_do_tpl
  }
  command <<<
    agat_sp_flag_premature_stop_codons_pl \
      ~{agat_sp_flag_premature_stop_codons_do_tpl} \
      ~{if defined(ref_file) then ("-reffile " +  '"' + ref_file + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(codon) then ("--codon " +  '"' + codon + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.0--pl526r35_0"
  }
  parameter_meta {
    ref_file: "Input GTF/GFF file."
    fast_a: "Imput fasta file."
    codon: "Codon table to use. [default 1]"
    output_gff_file: "Output gff3 file where the result will be printed."
    agat_sp_flag_premature_stop_codons_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_output_gff_file = "${in_output_gff_file}"
  }
}