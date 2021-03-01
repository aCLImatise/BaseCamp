version 1.0

task FastaGenerateRegionspy {
  command <<<
    fasta_generate_regions_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}