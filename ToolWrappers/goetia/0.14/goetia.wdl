version 1.0

task Goetia {
  command <<<
    goetia
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}