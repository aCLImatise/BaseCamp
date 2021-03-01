version 1.0

task Nohtml {
  command <<<
    nohtml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}