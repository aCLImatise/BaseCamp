version 1.0

task Bam2starchSge {
  command <<<
    bam2starch_sge
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}