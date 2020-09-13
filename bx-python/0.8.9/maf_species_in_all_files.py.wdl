version 1.0

task MafSpeciesInAllFilespy {
  command <<<
    maf_species_in_all_files_py
  >>>
  output {
    File out_stdout = stdout()
  }
}