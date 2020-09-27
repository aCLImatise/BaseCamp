version 1.0

task GetSpeciesTaxidsshbak {
  command <<<
    get_species_taxids_sh_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}