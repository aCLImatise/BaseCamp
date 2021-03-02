version 1.0

task ExtractSpeciesContigspy {
  command <<<
    extract_species_contigs_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}