version 1.0

task SimkaMinUtilspy {
  command <<<
    simkaMin_utils_py
  >>>
  output {
    File out_stdout = stdout()
  }
}