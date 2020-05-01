version 1.0

task Calib {
  input {
    Boolean fF
    Boolean rR
    Boolean oO
    Boolean sS
    Boolean qQ
    Boolean gG
    Boolean lL
    Boolean l1L1
    Boolean l2L2
    Boolean pP
    Boolean mM
    Boolean kK
    Boolean eE
    Boolean tT
    Boolean cC
  }
  command <<<
    calib \
      ~{true="-f" false="" fF} \
      ~{true="-r" false="" rR} \
      ~{true="-o" false="" oO} \
      ~{true="-s" false="" sS} \
      ~{true="-q" false="" qQ} \
      ~{true="-g" false="" gG} \
      ~{true="-l" false="" lL} \
      ~{true="-l1" false="" l1L1} \
      ~{true="-l2" false="" l2L2} \
      ~{true="-p" false="" pP} \
      ~{true="-m" false="" mM} \
      ~{true="-k" false="" kK} \
      ~{true="-e" false="" eE} \
      ~{true="-t" false="" tT} \
      ~{true="-c" false="" cC}
  >>>
}