version 1.0

task Xmfa2mafpl {
  command <<<
    xmfa2maf_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}