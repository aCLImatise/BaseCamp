version 1.0

task Bam2starchSgetypical {
  command <<<
    bam2starch_sge_typical
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}