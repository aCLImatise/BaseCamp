version 1.0

task BreakdancerMax {
  input {
    String oO
    Int sS
    Int cC
    Int mM
    Int qQ
    Int rR
    Int xX
    Int bB
    Boolean tT
    String dD
    String gG
    Boolean lL
    Boolean aA
    Int yY
    String? analysisAnalysisConfig
  }
  command <<<
    breakdancer-max \
      ~{analysisAnalysisConfig} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{true="-t" false="" tT} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{true="-a" false="" aA} \
      ~{if defined(yY) then ("-y " +  '"' + yY + '"') else ""}
  >>>
}