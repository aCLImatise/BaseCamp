version 1.0

task MapFastaIds {
  command <<<
    map_fasta_ids
  >>>
  output {
    File out_stdout = stdout()
  }
}