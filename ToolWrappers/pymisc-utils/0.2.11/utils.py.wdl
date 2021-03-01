version 1.0

task Utilspy {
  command <<<
    utils_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}