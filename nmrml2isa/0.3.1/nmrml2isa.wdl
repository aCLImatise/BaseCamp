version 1.0

task Nmrml2isa {
  input {
    String iI
    String oO
    String sS
    String mM
    String jJ
    String wW
    String tT
    Boolean vV
    Boolean qQ
  }
  command <<<
    nmrml2isa \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(jJ) then ("-j " +  '"' + jJ + '"') else ""} \
      ~{if defined(wW) then ("-W " +  '"' + wW + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-q" false="" qQ}
  >>>
}