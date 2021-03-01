version 1.0

task FastaSelectLen {
  command <<<
    fasta_select_len
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}