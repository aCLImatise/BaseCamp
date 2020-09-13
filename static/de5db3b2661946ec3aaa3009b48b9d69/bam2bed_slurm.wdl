version 1.0

task Bam2bedSlurm {
  command <<<
    bam2bed_slurm
  >>>
  output {
    File out_stdout = stdout()
  }
}