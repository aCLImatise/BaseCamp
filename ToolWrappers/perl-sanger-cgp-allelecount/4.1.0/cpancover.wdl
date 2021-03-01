version 1.0

task Cpancover {
  command <<<
    cpancover
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}