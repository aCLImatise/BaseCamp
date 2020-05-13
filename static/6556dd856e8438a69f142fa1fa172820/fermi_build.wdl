version 1.0

task FermiBuild {
  input {
    Int bB
    Boolean fF
    File iI
    Int lL
    File oO
    Boolean oO
    Int sS
    String? inInFa
  }
  command <<<
    fermi build \
      ~{inInFa} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-O" false="" oO} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}