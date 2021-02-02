version 1.0

task Fastamakeindex {
  command <<<
    fasta_make_index
  >>>
  output {
    File out_stdout = stdout()
  }
}