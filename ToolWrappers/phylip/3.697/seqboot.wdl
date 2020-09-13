version 1.0

task Seqboot {
  command <<<
    seqboot
  >>>
  output {
    File out_stdout = stdout()
  }
}