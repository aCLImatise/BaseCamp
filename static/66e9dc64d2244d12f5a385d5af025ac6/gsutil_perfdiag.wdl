version 1.0

task GsutilPerfdiag {
  input {
    Boolean nN
    Boolean cC
    Boolean kK
    Boolean pP
    Boolean yY
    Boolean sS
    Boolean dD
    Boolean tT
    Boolean mM
    Boolean oO
    Boolean iI
  }
  command <<<
    gsutil perfdiag \
      ~{true="-n" false="" nN} \
      ~{true="-c" false="" cC} \
      ~{true="-k" false="" kK} \
      ~{true="-p" false="" pP} \
      ~{true="-y" false="" yY} \
      ~{true="-s" false="" sS} \
      ~{true="-d" false="" dD} \
      ~{true="-t" false="" tT} \
      ~{true="-m" false="" mM} \
      ~{true="-o" false="" oO} \
      ~{true="-i" false="" iI}
  >>>
}