version 1.0

task Qseq2fastapl {
  command <<<
    qseq2fasta_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}