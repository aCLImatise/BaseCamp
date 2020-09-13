version 1.0

task MafLimitToSpeciespy {
  command <<<
    maf_limit_to_species_py
  >>>
  output {
    File out_stdout = stdout()
  }
}