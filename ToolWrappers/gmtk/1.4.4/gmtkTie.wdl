version 1.0

task GmtkTie {
  command <<<
    gmtkTie
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}