version 1.0

task Polymutt {
  command <<<
    polymutt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}