version 1.0

task FermiClean {
  input {
    Int nN
    Float dD
    Boolean cC
    Int lL
    Int eE
    Int iI
    Int oO
    Float rR
    Int nN
    Boolean aA
    Boolean sS
    Float wW
    Float rR
    String? inInMog
  }
  command <<<
    fermi clean \
      ~{inInMog} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="-C" false="" cC} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-A" false="" aA} \
      ~{true="-S" false="" sS} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""}
  >>>
}