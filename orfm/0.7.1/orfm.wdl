version 1.0

task Orfm {
  input {
    Int mM
    File tT
    Int lL
    String cC
    Boolean pP
    Boolean sS
    String rR
    Boolean vV
  }
  command <<<
    orfm \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="-s" false="" sS} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}