version 1.0

task DesignEditMetricTagspy {
  command <<<
    design_edit_metric_tags_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}