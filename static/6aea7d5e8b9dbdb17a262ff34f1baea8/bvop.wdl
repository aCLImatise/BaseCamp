version 1.0

task Bvop {
  input {
    Boolean nN
    File aA
    File oO
    File dD
    String pP
    Boolean iI
    Boolean vV
  }
  command <<<
    bvop \
      ~{true="-n" false="" nN} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="-v" false="" vV}
  >>>
}