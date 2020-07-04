version 1.0

task TaxonomicSummary.py {
  input {
    String query_file
    String results_file
    String summary_file
  }
  command <<<
    TaxonomicSummary.py \
      ~{query_file} \
      ~{results_file} \
      ~{summary_file}
  >>>
  parameter_meta {
    query_file: ""
    results_file: ""
    summary_file: ""
  }
}