version 1.0

task HashTar {
  input {
    String aA
    Boolean aA
    Boolean oO
    Boolean vV
    Boolean dD
    String hH
    String fF
    Boolean bB
    String mM
  }
  command <<<
    hash_tar \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{true="-A" false="" aA} \
      ~{true="-O" false="" oO} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-b" false="" bB} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""}
  >>>
}