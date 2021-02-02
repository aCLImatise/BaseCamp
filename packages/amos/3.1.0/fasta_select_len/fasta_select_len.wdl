version 1.0

task FastaSelectLen {
  command <<<
    fasta_select_len
  >>>
  output {
    File out_stdout = stdout()
  }
}