version 1.0

task TaxonomicSummarypy {
  input {
    File query_file
    File results_file
    File summary_file
  }
  command <<<
    TaxonomicSummary_py \
      ~{query_file} \
      ~{results_file} \
      ~{summary_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    query_file: ""
    results_file: ""
    summary_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}