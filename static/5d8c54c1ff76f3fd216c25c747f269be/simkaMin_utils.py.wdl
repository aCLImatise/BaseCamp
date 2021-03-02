version 1.0

task SimkaMinUtilspy {
  command <<<
    simkaMin_utils_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}