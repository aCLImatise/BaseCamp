version 1.0

task AutoDtd {
  command <<<
    autoDtd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}