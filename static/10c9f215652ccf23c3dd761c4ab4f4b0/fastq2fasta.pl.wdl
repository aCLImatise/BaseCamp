version 1.0

task Fastq2fastapl {
  command <<<
    fastq2fasta_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}