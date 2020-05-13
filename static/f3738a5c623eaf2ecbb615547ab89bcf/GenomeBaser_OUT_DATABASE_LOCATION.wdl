version 1.0

task GenomeBaserOUTDATABASELOCATION {
  input {
    String? optionsOptions
    String? genusGenus
    String? speciesSpecies
    String? outOutDatabaseLocation
  }
  command <<<
    GenomeBaser OUT_DATABASE_LOCATION \
      ~{optionsOptions} \
      ~{genusGenus} \
      ~{speciesSpecies} \
      ~{outOutDatabaseLocation}
  >>>
}