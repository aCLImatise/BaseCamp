version 1.0

task MafLimitToSpeciespy {
  command <<<
    maf_limit_to_species_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}