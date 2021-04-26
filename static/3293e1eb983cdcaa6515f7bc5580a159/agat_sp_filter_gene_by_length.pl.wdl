version 1.0

task AgatSpFilterGeneByLengthpl {
  input {
    Int? select_genes_longer
    File? ref_file
    Int? size
    String? test
    File? output_gff_file
    Boolean? verbose_option_debugging
    String agat_sp_filter_gene_by_length_do_tpl
  }
  command <<<
    agat_sp_filter_gene_by_length_pl \
      ~{agat_sp_filter_gene_by_length_do_tpl} \
      ~{if defined(select_genes_longer) then ("-o " +  '"' + select_genes_longer + '"') else ""} \
      ~{if defined(ref_file) then ("--reffile " +  '"' + ref_file + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(test) then ("--test " +  '"' + test + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""} \
      ~{if (verbose_option_debugging) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0"
  }
  parameter_meta {
    select_genes_longer: "Select genes longer than 200bp:"
    ref_file: "Input GFF3 file that will be read"
    size: "Integer - Gene size in pb [Default 100]"
    test: "Test to apply (>, <, =, >= or <=). If you use one of these two\\ncharacters >, <, please do not forget to quote your parameter\\nlike that \\\"<=\\\". Else your terminal will complain. [Default \\\"=\\\"]"
    output_gff_file: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    verbose_option_debugging: "Verbose option for debugging purpose."
    agat_sp_filter_gene_by_length_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_output_gff_file = "${in_output_gff_file}"
  }
}