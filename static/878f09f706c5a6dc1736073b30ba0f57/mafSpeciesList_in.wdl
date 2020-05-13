version 1.0

task MafSpeciesListIn.maf {
  input {
    String? outOutLst
  }
  command <<<
    mafSpeciesList in.maf \
      ~{outOutLst}
  >>>
}