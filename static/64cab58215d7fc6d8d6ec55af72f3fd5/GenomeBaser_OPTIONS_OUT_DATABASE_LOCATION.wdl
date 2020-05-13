version 1.0

task GenomeBaserOPTIONSOUTDATABASELOCATION {
  input {
    String? genusGenus
    String? speciesSpecies
    String? outOutDatabaseLocation
  }
  command <<<
    GenomeBaser OPTIONS OUT_DATABASE_LOCATION \
      ~{genusGenus} \
      ~{speciesSpecies} \
      ~{outOutDatabaseLocation}
  >>>
}