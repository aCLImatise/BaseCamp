version 1.0

task Fastq2fastaplorig {
  command <<<
    fastq2fasta_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}