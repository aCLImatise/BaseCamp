version 1.0

task FastqSplitInterleaved {
  command <<<
    fastq_split_interleaved
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}