version 1.0

task Bam2bedSgetypical {
  command <<<
    bam2bed_sge_typical
  >>>
  output {
    File out_stdout = stdout()
  }
}