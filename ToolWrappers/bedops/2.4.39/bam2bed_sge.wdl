version 1.0

task Bam2bedSge {
  command <<<
    bam2bed_sge
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}