version 1.0

task ValidateEditMetricTagspy {
  command <<<
    validate_edit_metric_tags_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}