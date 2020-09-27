version 1.0

task Bam2starchSgemegarow {
  command <<<
    bam2starch_sge_megarow
  >>>
  output {
    File out_stdout = stdout()
  }
}