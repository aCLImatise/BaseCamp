version 1.0

task GenomeBaserOPTIONSGENUSOUTDATABASELOCATION {
  input {
    String? speciesSpecies
    String? outOutDatabaseLocation
  }
  command <<<
    GenomeBaser OPTIONS GENUS OUT_DATABASE_LOCATION \
      ~{speciesSpecies} \
      ~{outOutDatabaseLocation}
  >>>
}