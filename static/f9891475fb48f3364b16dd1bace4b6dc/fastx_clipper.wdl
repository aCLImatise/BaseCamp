version 1.0

task FastxClipper {
  input {
    String aA
    Boolean dD
    String lL
    Boolean nN
    String dD
    Boolean cC
    Boolean cC
    Boolean oO
    Boolean vV
    Boolean zZ
    String iI
    String oO
  }
  command <<<
    fastx_clipper \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{true="-D" false="" dD} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-n" false="" nN} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{true="-C" false="" cC} \
      ~{true="-o" false="" oO} \
      ~{true="-v" false="" vV} \
      ~{true="-z" false="" zZ} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}