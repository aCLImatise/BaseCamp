version 1.0

task Seqwish {
  input {
    Boolean pP
    Boolean sS
    Boolean bB
    Boolean gG
    Boolean mM
    Boolean oO
    Boolean tT
    Boolean rR
    Boolean kK
    Boolean bB
    Boolean keepKeepTemp
    Boolean debugDebug
  }
  command <<<
    seqwish \
      ~{true="-p" false="" pP} \
      ~{true="-s" false="" sS} \
      ~{true="-b" false="" bB} \
      ~{true="-g" false="" gG} \
      ~{true="-m" false="" mM} \
      ~{true="-o" false="" oO} \
      ~{true="-t" false="" tT} \
      ~{true="-r" false="" rR} \
      ~{true="-k" false="" kK} \
      ~{true="-B" false="" bB} \
      ~{true="--keep-temp" false="" keepKeepTemp} \
      ~{true="--debug" false="" debugDebug}
  >>>
}