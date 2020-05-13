version 1.0

task GenomeBaserOPTIONSSPECIES {
  input {
    String? genusGenus
    String? speciesSpecies
    String? outOutDatabaseLocation
  }
  command <<<
    GenomeBaser OPTIONS SPECIES \
      ~{genusGenus} \
      ~{speciesSpecies} \
      ~{outOutDatabaseLocation}
  >>>
}