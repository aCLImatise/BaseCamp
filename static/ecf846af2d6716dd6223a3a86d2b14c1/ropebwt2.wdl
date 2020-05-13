version 1.0

task Ropebwt2 {
  input {
    Int lL
    Int nN
    Boolean sS
    Boolean rR
    Int mM
    Boolean pP
    Int mM
    File iI
    Boolean lL
    Boolean fF
    Boolean rR
    Boolean nN
    Int xX
    Boolean cC
    Int qQ
    File oO
    Boolean bB
    Boolean dD
    Boolean tT
    String? ropebwt2Ropebwt2R187
    String? inInFqGz
  }
  command <<<
    ropebwt2 \
      ~{ropebwt2Ropebwt2R187} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="-r" false="" rR} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-P" false="" pP} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{true="-L" false="" lL} \
      ~{true="-F" false="" fF} \
      ~{true="-R" false="" rR} \
      ~{true="-N" false="" nN} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{true="-C" false="" cC} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-b" false="" bB} \
      ~{true="-d" false="" dD} \
      ~{true="-T" false="" tT} \
      ~{inInFqGz}
  >>>
}