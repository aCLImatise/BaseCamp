version 1.0

task Translate {
  input {
    Boolean aA
    Int lL
    Boolean mM
    String oO
    Boolean qQ
    String sS
  }
  command <<<
    translate \
      ~{true="-a" false="" aA} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-m" false="" mM} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-q" false="" qQ} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}