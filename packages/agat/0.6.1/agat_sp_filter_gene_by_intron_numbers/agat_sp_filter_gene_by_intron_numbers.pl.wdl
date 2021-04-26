version 1.0

task AgatSpFilterGeneByIntronNumberspl {
  input {
    Int? nb
    File? ref_file
    Int? number
    String? test
    File? output_gff_file
    Boolean? verbose_option_debugging
    String agat_sp_filter_gene_by_intron_numbers_do_tpl
  }
  command <<<
    agat_sp_filter_gene_by_intron_numbers_pl \
      ~{agat_sp_filter_gene_by_intron_numbers_do_tpl} \
      ~{if defined(nb) then ("--nb " +  '"' + nb + '"') else ""} \
      ~{if defined(ref_file) then ("--reffile " +  '"' + ref_file + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(test) then ("--test " +  '"' + test + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""} \
      ~{if (verbose_option_debugging) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0"
  }
  parameter_meta {
    nb: "[ --output outfile ]"
    ref_file: "Input GFF3 file that will be read"
    number: "Integer - Number of introns [Default 0]"
    test: "to apply (>, <, =, >= or <=). If you use one of these"
    output_gff_file: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    verbose_option_debugging: "Verbose option for debugging purpose."
    agat_sp_filter_gene_by_intron_numbers_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_output_gff_file = "${in_output_gff_file}"
  }
}