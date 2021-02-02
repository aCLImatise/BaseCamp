version 1.0

task ChiraUtilitiespy {
  command <<<
    chira_utilities_py
  >>>
  output {
    File out_stdout = stdout()
  }
}