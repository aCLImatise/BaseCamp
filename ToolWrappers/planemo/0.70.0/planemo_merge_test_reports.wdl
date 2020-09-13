version 1.0

task PlanemoMergeTestReports {
  input {
    String input_paths
    String file_path
  }
  command <<<
    planemo merge_test_reports \
      ~{input_paths} \
      ~{file_path}
  >>>
  parameter_meta {
    input_paths: ""
    file_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}