version 1.0

task Combp {
  command <<<
    comb_p
  >>>
  output {
    File out_stdout = stdout()
  }
}