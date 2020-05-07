version 1.0

task OutputLayout {
  input {
    Boolean gG
    Boolean lL
    Boolean iI
    String oO
    Boolean mM
    Boolean vV
    Boolean rR
  }
  command <<<
    outputLayout \
      ~{true="-G" false="" gG} \
      ~{true="-l" false="" lL} \
      ~{true="-i" false="" iI} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-M" false="" mM} \
      ~{true="-v" false="" vV} \
      ~{true="-R" false="" rR}
  >>>
}