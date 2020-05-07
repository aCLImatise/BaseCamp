version 1.0

task ConvertReference {
  input {
    String tT
    Boolean vV
    String mM
    String iI
    String oO
    Boolean pP
    Boolean xX
    Boolean hH
  }
  command <<<
    convert_reference \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="-X" false="" xX} \
      ~{true="-H" false="" hH}
  >>>
}