version 1.0

task MafSpeciesSubsetOut.maf {
  input {
    String? inInMaf
    String? speciesSpeciesLst
    String? outOutMaf
  }
  command <<<
    mafSpeciesSubset out.maf \
      ~{inInMaf} \
      ~{speciesSpeciesLst} \
      ~{outOutMaf}
  >>>
}