version 1.0

task Idbao {
  command <<<
    idba_o
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}