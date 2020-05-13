version 1.0

task MafSpeciesSubsetSpecies.lst {
  input {
    String? inInMaf
    String? speciesSpeciesLst
    String? outOutMaf
  }
  command <<<
    mafSpeciesSubset species.lst \
      ~{inInMaf} \
      ~{speciesSpeciesLst} \
      ~{outOutMaf}
  >>>
}