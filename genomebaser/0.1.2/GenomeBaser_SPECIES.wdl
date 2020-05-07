version 1.0

task GenomeBaserSPECIES {
  input {
    String? optionsOptions
    String? genusGenus
    String? speciesSpecies
    String? outOutDatabaseLocation
  }
  command <<<
    GenomeBaser SPECIES \
      ~{optionsOptions} \
      ~{genusGenus} \
      ~{speciesSpecies} \
      ~{outOutDatabaseLocation}
  >>>
}