version 1.0

task GmtkTFmerge {
  command <<<
    gmtkTFmerge
  >>>
  output {
    File out_stdout = stdout()
  }
}