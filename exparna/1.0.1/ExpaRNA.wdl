version 1.0

task ExpaRNA {
  input {
    Boolean sS
    Boolean nN
    Boolean tT
    Boolean gG
    Boolean dD
    Boolean oO
    Boolean iI
    Boolean eE
    Boolean aA
    Boolean pP
    Boolean aA
    Boolean vV
  }
  command <<<
    ExpaRNA \
      ~{true="-s" false="" sS} \
      ~{true="-n" false="" nN} \
      ~{true="-t" false="" tT} \
      ~{true="-g" false="" gG} \
      ~{true="-d" false="" dD} \
      ~{true="-o" false="" oO} \
      ~{true="-i" false="" iI} \
      ~{true="-e" false="" eE} \
      ~{true="-a" false="" aA} \
      ~{true="-p" false="" pP} \
      ~{true="-A" false="" aA} \
      ~{true="-v" false="" vV}
  >>>
}