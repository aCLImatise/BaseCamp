version 1.0

task Qpff3base {
  input {
    String fF
    String bB
    File pP
    Boolean gG
    String sS
    Boolean oO
    String lL
    Boolean vV
    Boolean vV
    Boolean xX
  }
  command <<<
    qpff3base \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-g" false="" gG} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-V" false="" vV} \
      ~{true="-x" false="" xX}
  >>>
}