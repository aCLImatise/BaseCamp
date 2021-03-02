version 1.0

task AgatSpWebApolloCompliantpl {
  input {
    File? gff
    File? output_gff_file
    String agat_sp_web_apollo_compliant_do_tpl
  }
  command <<<
    agat_sp_webApollo_compliant_pl \
      ~{agat_sp_web_apollo_compliant_do_tpl} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.5.1--pl526r35_0"
  }
  parameter_meta {
    gff: "Input GTF/GFF file."
    output_gff_file: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    agat_sp_web_apollo_compliant_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_output_gff_file = "${in_output_gff_file}"
  }
}