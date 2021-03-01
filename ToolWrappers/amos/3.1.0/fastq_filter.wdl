version 1.0

task FastqFilter {
  command <<<
    fastq_filter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}