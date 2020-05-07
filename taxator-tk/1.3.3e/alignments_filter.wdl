version 1.0

task AlignmentsFilter {
  input {
    Boolean mM
    Boolean pP
    Boolean tT
    Boolean eE
    Boolean bB
    Boolean sS
    Boolean kK
    Boolean cC
    Boolean rR
    Boolean xX
    Boolean yY
    Boolean zZ
  }
  command <<<
    alignments-filter \
      ~{true="-m" false="" mM} \
      ~{true="-p" false="" pP} \
      ~{true="-t" false="" tT} \
      ~{true="-e" false="" eE} \
      ~{true="-b" false="" bB} \
      ~{true="-s" false="" sS} \
      ~{true="-k" false="" kK} \
      ~{true="-c" false="" cC} \
      ~{true="-r" false="" rR} \
      ~{true="-x" false="" xX} \
      ~{true="-y" false="" yY} \
      ~{true="-z" false="" zZ}
  >>>
}