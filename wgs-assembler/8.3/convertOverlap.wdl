version 1.0

task ConvertOverlap {
  input {
    Boolean aA
    Boolean ovlOvl
    Boolean obtObt
    Boolean merMer
    String iI
    String oO
  }
  command <<<
    convertOverlap \
      ~{true="-a" false="" aA} \
      ~{true="-ovl" false="" ovlOvl} \
      ~{true="-obt" false="" obtObt} \
      ~{true="-mer" false="" merMer} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}