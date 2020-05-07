version 1.0

task RNAblueprint {
  input {
    Boolean vV
    Boolean dD
    Boolean iI
    Boolean oO
    Boolean gG
    Boolean mM
    Boolean sS
    Boolean nN
  }
  command <<<
    RNAblueprint \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-g" false="" gG} \
      ~{true="-m" false="" mM} \
      ~{true="-s" false="" sS} \
      ~{true="-n" false="" nN}
  >>>
}