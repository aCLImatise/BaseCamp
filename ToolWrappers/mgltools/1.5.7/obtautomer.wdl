version 1.0

task Obtautomer {
  command <<<
    obtautomer
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}