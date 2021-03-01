version 1.0

task Bam2starchSgemegarow {
  command <<<
    bam2starch_sge_megarow
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}