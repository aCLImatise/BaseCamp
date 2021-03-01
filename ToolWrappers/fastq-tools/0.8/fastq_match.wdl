version 1.0

task Fastqmatch {
  command <<<
    fastq_match
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}