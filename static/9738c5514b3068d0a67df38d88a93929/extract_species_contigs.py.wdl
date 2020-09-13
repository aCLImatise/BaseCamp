version 1.0

task ExtractSpeciesContigspy {
  command <<<
    extract_species_contigs_py
  >>>
  output {
    File out_stdout = stdout()
  }
}