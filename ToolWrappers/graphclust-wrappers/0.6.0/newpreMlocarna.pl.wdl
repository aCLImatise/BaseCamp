version 1.0

task NewpreMlocarnapl {
  command <<<
    newpreMlocarna_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}