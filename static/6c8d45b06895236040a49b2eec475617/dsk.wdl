version 1.0

task Dsk {
  input {
    Int tT
    Int mM
    Int dD
    String oO
    Boolean histoHisto
    Boolean cC
    Boolean bB
    String? inputInputFile
    String? kmKmErSize
  }
  command <<<
    dsk \
      ~{inputInputFile} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-histo" false="" histoHisto} \
      ~{true="-c" false="" cC} \
      ~{true="-b" false="" bB} \
      ~{kmKmErSize}
  >>>
}