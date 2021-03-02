version 1.0

task MapFastaIds {
  command <<<
    map_fasta_ids
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}