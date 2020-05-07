version 1.0

task GenomeBaserGENUS {
  input {
    String? optionsOptions
    String? genusGenus
    String? speciesSpecies
    String? outOutDatabaseLocation
  }
  command <<<
    GenomeBaser GENUS \
      ~{optionsOptions} \
      ~{genusGenus} \
      ~{speciesSpecies} \
      ~{outOutDatabaseLocation}
  >>>
}