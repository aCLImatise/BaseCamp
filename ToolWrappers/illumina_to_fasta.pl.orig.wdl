version 1.0

task IlluminaToFastaplorig {
  command <<<
    illumina_to_fasta_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}