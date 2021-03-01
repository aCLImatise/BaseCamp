version 1.0

task Vcflength {
  command <<<
    vcflength
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}