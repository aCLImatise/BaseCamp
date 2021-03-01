version 1.0

task TrfMask {
  command <<<
    trfMask
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}