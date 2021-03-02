version 1.0

task LoadProkaryotes {
  command <<<
    load_prokaryotes
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}