version 1.0

task Srapileup2 {
  command <<<
    sra_pileup_2
  >>>
  output {
    File out_stdout = stdout()
  }
}