version 1.0

task DesignEditMetricTagspy {
  command <<<
    design_edit_metric_tags_py
  >>>
  output {
    File out_stdout = stdout()
  }
}