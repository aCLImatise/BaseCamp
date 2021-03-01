version 1.0

task Doit {
  command <<<
    doit
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}