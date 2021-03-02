version 1.0

task ToArachne {
  command <<<
    toArachne
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}