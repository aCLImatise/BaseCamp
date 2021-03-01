version 1.0

task Alc {
  command <<<
    alc
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}