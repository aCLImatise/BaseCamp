version 1.0

task Readreduce {
  input {
    String oO
    String aA
    String lL
    Int sS
    String dD
    Boolean jJ
    Boolean qQ
  }
  command <<<
    readreduce \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="-j" false="" jJ} \
      ~{true="-q" false="" qQ}
  >>>
}