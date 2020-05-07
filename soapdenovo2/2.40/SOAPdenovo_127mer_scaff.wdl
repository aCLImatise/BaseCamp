version 1.0

task SOAPdenovo127merScaff {
  input {
    String gG
    Boolean fF
    Boolean zZ
    Boolean uU
    Boolean sS
    Boolean wW
    Boolean vV
    Int gG
    Int lL
    Float cC
    Float cC
    Float bB
    Float bB
    Int nN
    Int pP
  }
  command <<<
    SOAPdenovo-127mer scaff \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{true="-F" false="" fF} \
      ~{true="-z" false="" zZ} \
      ~{true="-u" false="" uU} \
      ~{true="-S" false="" sS} \
      ~{true="-w" false="" wW} \
      ~{true="-V" false="" vV} \
      ~{if defined(gG) then ("-G " +  '"' + gG + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""}
  >>>
}