version 1.0

task TrimadapMt {
  input {
    Int lL
    Int sS
    Int tT
    Float dD
    Int pP
    Boolean vV
    String? inInFq
  }
  command <<<
    trimadap-mt \
      ~{inInFq} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}