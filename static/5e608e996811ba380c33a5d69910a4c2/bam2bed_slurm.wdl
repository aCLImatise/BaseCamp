version 1.0

task Bam2bedSlurm {
  command <<<
    bam2bed_slurm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}