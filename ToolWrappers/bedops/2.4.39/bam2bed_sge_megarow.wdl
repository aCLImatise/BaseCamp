version 1.0

task Bam2bedSgemegarow {
  command <<<
    bam2bed_sge_megarow
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}