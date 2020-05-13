version 1.0

task Envpath {
  input {
    String aA
    String cC
    String pP
    String iI
    Boolean lL
    Boolean nN
    String rR
    Boolean sS
    Boolean uU
    File wW
  }
  command <<<
    envpath \
      ~{if defined(aA) then ("-A " +  '"' + aA + '"') else ""} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{true="-L" false="" lL} \
      ~{true="-N" false="" nN} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{true="-S" false="" sS} \
      ~{true="-U" false="" uU} \
      ~{if defined(wW) then ("-W " +  '"' + wW + '"') else ""}
  >>>
}