version 1.0

task Bam2bedSgemegarow {
  command <<<
    bam2bed_sge_megarow
  >>>
  output {
    File out_stdout = stdout()
  }
}