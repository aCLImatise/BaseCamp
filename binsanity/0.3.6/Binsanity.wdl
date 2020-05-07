version 1.0

task Binsanity {
  input {
    String cC
    String fF
    String pP
    Int mM
    String vV
    String dD
    String lL
    String xX
    String oO
    String outOutPrefix
    String logLog
  }
  command <<<
    Binsanity \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(outOutPrefix) then ("--outPrefix " +  '"' + outOutPrefix + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""}
  >>>
}