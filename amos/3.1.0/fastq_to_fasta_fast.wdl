version 1.0

task FastqToFastaFast {
  command <<<
    fastq_to_fasta_fast
  >>>
  output {
    File out_stdout = stdout()
  }
}