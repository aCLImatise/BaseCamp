version 1.0

task Taxaranks {
  input {
    File iI
    File oO
    Boolean vV
  }
  command <<<
    taxaranks \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}