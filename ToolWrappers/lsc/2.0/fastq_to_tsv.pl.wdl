version 1.0

task FastqToTsvpl {
  command <<<
    fastq_to_tsv_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}