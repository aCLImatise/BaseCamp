version 1.0

task ContigToChrCoords {
  command <<<
    contig_to_chr_coords
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}