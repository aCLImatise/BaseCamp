version 1.0

task IlluminaToFastaplorig {
  command <<<
    illumina_to_fasta_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}