version 1.0

task Vcfrandom {
  command <<<
    vcfrandom
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}