version 1.0

task Afplot {
  command <<<
    afplot
  >>>
  output {
    File out_stdout = stdout()
  }
}