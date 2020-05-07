version 1.0

task Analyze {
  input {
    Boolean wW
    Boolean rR
    Boolean uU
    Boolean aA
    Boolean sS
    Boolean sS
    Boolean cC
    Boolean mM
    Boolean vV
    String eE
    Float lL
    Float hH
    String iI
    String oO
  }
  command <<<
    analyze \
      ~{true="-w" false="" wW} \
      ~{true="-r" false="" rR} \
      ~{true="-u" false="" uU} \
      ~{true="-a" false="" aA} \
      ~{true="-S" false="" sS} \
      ~{true="-s" false="" sS} \
      ~{true="-c" false="" cC} \
      ~{true="-m" false="" mM} \
      ~{true="-v" false="" vV} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}