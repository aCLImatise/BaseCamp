version 1.0

task Propmapped {
  input {
    String iI
    String oO
    Boolean fF
    Boolean pP
  }
  command <<<
    propmapped \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-p" false="" pP}
  >>>
}