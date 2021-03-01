version 1.0

task FilterBadlistpl {
  input {
    Boolean? flag_fix_file
    Boolean? output_genes_are
    Boolean? more_options
    Boolean? options
  }
  command <<<
    filter_badlist_pl \
      ~{if (flag_fix_file) then "-f" else ""} \
      ~{if (output_genes_are) then "-l" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    flag_fix_file: "Flag to fix the file."
    output_genes_are: "Output those genes that are in the list."
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}