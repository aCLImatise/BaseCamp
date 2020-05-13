version 1.0

task Samsort {
  input {
    Boolean bB
    Boolean cC
    String fF
    Boolean mM
    File oO
    Int sS
    String tT
    String zZ
    String? locationLocation
    String? qnameQname
  }
  command <<<
    samsort \
      ~{locationLocation} \
      ~{true="-b" false="" bB} \
      ~{true="-c" false="" cC} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-m" false="" mM} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""} \
      ~{qnameQname}
  >>>
}