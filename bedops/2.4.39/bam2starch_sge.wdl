version 1.0

task Bam2starchSge {
  command <<<
    bam2starch_sge
  >>>
  output {
    File out_stdout = stdout()
  }
}