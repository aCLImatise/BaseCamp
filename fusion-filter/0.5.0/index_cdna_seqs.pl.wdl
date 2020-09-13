version 1.0

task IndexCdnaSeqspl {
  command <<<
    index_cdna_seqs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}