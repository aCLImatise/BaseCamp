version 1.0

task SeqGen {
  input {
    Boolean lL
    Boolean nN
    Boolean pP
    Boolean sS
    Boolean dD
    Boolean kK
    Boolean mM
    Boolean aA
    Boolean gG
    Boolean iI
    Boolean cC
    Boolean tT
    Boolean rR
    Boolean fF
    Boolean rR
    Boolean fF
  }
  command <<<
    seq-gen \
      ~{true="-l" false="" lL} \
      ~{true="-n" false="" nN} \
      ~{true="-p" false="" pP} \
      ~{true="-s" false="" sS} \
      ~{true="-d" false="" dD} \
      ~{true="-k" false="" kK} \
      ~{true="-m" false="" mM} \
      ~{true="-a" false="" aA} \
      ~{true="-g" false="" gG} \
      ~{true="-i" false="" iI} \
      ~{true="-c" false="" cC} \
      ~{true="-t" false="" tT} \
      ~{true="-r" false="" rR} \
      ~{true="-f" false="" fF} \
      ~{true="-r" false="" rR} \
      ~{true="-f" false="" fF}
  >>>
}