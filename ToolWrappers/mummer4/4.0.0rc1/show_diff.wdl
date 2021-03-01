version 1.0

task Showdiff {
  input {
    Boolean? output_diff_information
    Boolean? do_show_header
    Boolean? show_diff_information_queries
    Boolean? show_diff_information_defaultoutputs
    String delta_file
  }
  command <<<
    show_diff \
      ~{delta_file} \
      ~{if (output_diff_information) then "-f" else ""} \
      ~{if (do_show_header) then "-H" else ""} \
      ~{if (show_diff_information_queries) then "-q" else ""} \
      ~{if (show_diff_information_defaultoutputs) then "-r" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mummer4:4.0.0rc1--pl526he1b5a44_0"
  }
  parameter_meta {
    output_diff_information: "Output diff information as AMOS features"
    do_show_header: "Do not show header"
    show_diff_information_queries: "Show diff information for queries"
    show_diff_information_defaultoutputs: "Show diff information for references (default)\\nOutputs a list of structural differences for each sequence in"
    delta_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}