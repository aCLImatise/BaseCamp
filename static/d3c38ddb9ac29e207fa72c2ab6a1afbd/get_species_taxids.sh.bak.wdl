version 1.0

task GetSpeciesTaxidsshbak {
  command <<<
    get_species_taxids_sh_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}