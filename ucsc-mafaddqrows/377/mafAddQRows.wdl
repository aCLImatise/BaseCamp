version 1.0

task MafAddQRows {
  input {
    String divisorDivisor
    String? speciesSpeciesLst
    String? inInMaf
    String? outOutMaf
  }
  command <<<
    mafAddQRows \
      ~{speciesSpeciesLst} \
      ~{if defined(divisorDivisor) then ("-divisor " +  '"' + divisorDivisor + '"') else ""} \
      ~{inInMaf} \
      ~{outOutMaf}
  >>>
}