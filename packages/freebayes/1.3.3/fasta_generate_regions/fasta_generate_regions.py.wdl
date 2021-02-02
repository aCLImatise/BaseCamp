version 1.0

task FastaGenerateRegionspy {
  command <<<
    fasta_generate_regions_py
  >>>
  output {
    File out_stdout = stdout()
  }
}