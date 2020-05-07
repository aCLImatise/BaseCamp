version 1.0

task Spliceai {
  input {
    Boolean iI
    Boolean oO
    String rR
    String aA
    Boolean dD
    Boolean mM
  }
  command <<<
    spliceai \
      ~{true="-I" false="" iI} \
      ~{true="-O" false="" oO} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{if defined(aA) then ("-A " +  '"' + aA + '"') else ""} \
      ~{true="-D" false="" dD} \
      ~{true="-M" false="" mM}
  >>>
}