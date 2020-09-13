version 1.0

task Bam2bedSge {
  command <<<
    bam2bed_sge
  >>>
  output {
    File out_stdout = stdout()
  }
}