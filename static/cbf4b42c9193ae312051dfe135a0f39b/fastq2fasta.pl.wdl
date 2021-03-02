version 1.0

task Fastq2fastapl {
  command <<<
    fastq2fasta_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}