version 1.0

task Mpinab2c {
  command <<<
    mpinab2c
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}