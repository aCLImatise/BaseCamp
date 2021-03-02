version 1.0

task Simple {
  command <<<
    simple
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}