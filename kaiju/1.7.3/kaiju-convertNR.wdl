version 1.0

task KaijuConvertNR {
  input {
    File tT
    File gG
    File oO
    Boolean aA
    File iI
    File lL
    File eE
  }
  command <<<
    kaiju-convertNR \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""}
  >>>
}