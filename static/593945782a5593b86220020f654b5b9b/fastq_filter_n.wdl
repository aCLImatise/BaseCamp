version 1.0

task FastqFilterN {
  command <<<
    fastq_filter_n
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}