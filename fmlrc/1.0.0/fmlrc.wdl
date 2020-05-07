version 1.0

task Fmlrc {
  input {
    Boolean vV
    Int kK
    Int kK
    Int pP
    Int bB
    Int eE
    Int mM
    Float fF
    Int bB
    Boolean iI
    Int fF
    Boolean vV
    String? compCompMsBwtNpy
    String? longLongReadSfa
    String? correctedCorrectedReadSfa
  }
  command <<<
    fmlrc \
      ~{compCompMsBwtNpy} \
      ~{true="-v" false="" vV} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(kK) then ("-K " +  '"' + kK + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""} \
      ~{true="-V" false="" vV} \
      ~{longLongReadSfa} \
      ~{correctedCorrectedReadSfa}
  >>>
}