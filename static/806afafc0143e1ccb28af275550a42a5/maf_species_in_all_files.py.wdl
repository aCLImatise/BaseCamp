version 1.0

task MafSpeciesInAllFilespy {
  command <<<
    maf_species_in_all_files_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}