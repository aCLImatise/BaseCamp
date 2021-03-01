version 1.0

task Fastqqscale {
  command <<<
    fastq_qscale
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}