version 1.0

task HgSpeciesRna {
  input {
    Boolean estEst
    File filterFilter
    String? databaseDatabase
    String? genusGenus
    String? speciesSpecies
    String? outputOutputFa
  }
  command <<<
    hgSpeciesRna \
      ~{databaseDatabase} \
      ~{true="-est" false="" estEst} \
      ~{if defined(filterFilter) then ("-filter " +  '"' + filterFilter + '"') else ""} \
      ~{genusGenus} \
      ~{speciesSpecies} \
      ~{outputOutputFa}
  >>>
}