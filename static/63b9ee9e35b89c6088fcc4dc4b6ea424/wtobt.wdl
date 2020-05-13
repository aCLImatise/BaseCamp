version 1.0

task Wtobt {
  input {
    String iI
    String bB
    String jJ
    Boolean oO
    Boolean fF
    Boolean cC
    Int sS
    Float mM
    Int wW
    Int cC
  }
  command <<<
    wtobt \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(jJ) then ("-j " +  '"' + jJ + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="-f" false="" fF} \
      ~{true="-C" false="" cC} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""}
  >>>
}