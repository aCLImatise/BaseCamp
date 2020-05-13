version 1.0

task MafSpeciesSubsetIn.mafOut.maf {
  input {
    String? speciesSpeciesLst
    String? outOutMaf
  }
  command <<<
    mafSpeciesSubset in.maf out.maf \
      ~{speciesSpeciesLst} \
      ~{outOutMaf}
  >>>
}