version 1.0

task ErrorCorrectionCorrect {
  input {
    Int kK
    Int kK
    Int sS
    Int lL
    Int eE
    Int lL
    Int eE
    Int mM
    Int cC
    Int tT
    Int rR
    Int iI
    Boolean xX
    Boolean jJ
    Boolean yY
    Boolean vV
    Boolean fF
    Boolean qQ
    Boolean qQ
    Int aA
    Int aA
    Int iI
    Float uU
    Float dD
  }
  command <<<
    ErrorCorrection correct \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(kK) then ("-K " +  '"' + kK + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{true="-x" false="" xX} \
      ~{true="-j" false="" jJ} \
      ~{true="-y" false="" yY} \
      ~{true="-v" false="" vV} \
      ~{true="-F" false="" fF} \
      ~{true="-q" false="" qQ} \
      ~{true="-Q" false="" qQ} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(aA) then ("-A " +  '"' + aA + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""}
  >>>
}