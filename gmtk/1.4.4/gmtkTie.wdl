version 1.0

task GmtkTie {
  command <<<
    gmtkTie
  >>>
  output {
    File out_stdout = stdout()
  }
}