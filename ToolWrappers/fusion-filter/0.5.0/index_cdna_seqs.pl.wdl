version 1.0

task IndexCdnaSeqspl {
  command <<<
    index_cdna_seqs_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}