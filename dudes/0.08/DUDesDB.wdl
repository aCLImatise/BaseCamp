version 1.0

task DUDesDB.py {
  input {
    String mM
    Boolean fF
    Boolean gG
    String nN
    String aA
    String oO
    String tT
    Boolean vV
  }
  command <<<
    DUDesDB.py \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-g" false="" gG} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}