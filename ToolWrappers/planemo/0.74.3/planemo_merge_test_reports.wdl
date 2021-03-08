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
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.3--py_0"
  }
  parameter_meta {
    input_paths: ""
    file_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}