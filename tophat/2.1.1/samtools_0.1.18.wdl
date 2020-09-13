version 1.0

task Samtools0118 {
  command <<<
    samtools_0_1_18
  >>>
  output {
    File out_stdout = stdout()
  }
}