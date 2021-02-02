version 1.0

task FastaSplitterpl {
  command <<<
    fasta_splitter_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}