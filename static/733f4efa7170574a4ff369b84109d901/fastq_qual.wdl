version 1.0

task Fastqqual {
  command <<<
    fastq_qual
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}