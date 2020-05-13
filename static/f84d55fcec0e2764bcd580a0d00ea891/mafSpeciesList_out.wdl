version 1.0

task MafSpeciesListOut.lst {
  input {
    String? inInMaf
    String? outOutLst
  }
  command <<<
    mafSpeciesList out.lst \
      ~{inInMaf} \
      ~{outOutLst}
  >>>
}