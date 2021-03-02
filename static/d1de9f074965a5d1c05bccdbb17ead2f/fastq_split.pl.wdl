version 1.0

task FastqSplitpl {
  command <<<
    fastq_split_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}