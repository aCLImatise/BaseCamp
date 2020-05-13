version 1.0

task Ksw {
  input {
    Int mM
    Int aA
    Int bB
    Int qQ
    Int rR
    Int wW
    File mM
    Boolean cC
    Boolean sS
    Boolean hH
    Boolean rR
    Boolean oO
    Int lL
  }
  command <<<
    ksw \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{true="-s" false="" sS} \
      ~{true="-H" false="" hH} \
      ~{true="-R" false="" rR} \
      ~{true="-O" false="" oO} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""}
  >>>
}