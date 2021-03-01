version 1.0

task Residuegen {
  command <<<
    residuegen
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}