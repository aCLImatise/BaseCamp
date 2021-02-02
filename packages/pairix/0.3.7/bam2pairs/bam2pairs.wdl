version 1.0

task Bam2pairs {
  command <<<
    bam2pairs
  >>>
  output {
    File out_stdout = stdout()
  }
}