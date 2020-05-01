version 1.0

task RNAsoup {
  input {
    String tT
    String fF
    String mM
    String oO
    String kK
    Boolean vV
  }
  command <<<
    RNAsoup \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}