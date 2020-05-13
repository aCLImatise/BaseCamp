version 1.0

task BlibBuild {
  input {
    Boolean oO
    Boolean sS
    Boolean sS
    Boolean uU
    Boolean uU
    Boolean hH
    Boolean cC
    String cC
    Boolean vV
    Boolean lL
    Int mM
    String lL
    String iI
    String aA
    File xX
    Float pP
    Boolean dD
  }
  command <<<
    BlibBuild \
      ~{true="-o" false="" oO} \
      ~{true="-S" false="" sS} \
      ~{true="-s" false="" sS} \
      ~{true="-u" false="" uU} \
      ~{true="-U" false="" uU} \
      ~{true="-H" false="" hH} \
      ~{true="-C" false="" cC} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-L" false="" lL} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{true="-d" false="" dD}
  >>>
}