version 1.0

task Abawaca {
  command <<<
    abawaca
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}