version 1.0

task AlfredConsensus {
  input {
    Boolean fF
    Boolean dD
    Boolean tT
    Boolean qQ
    Boolean pP
    Boolean wW
    Boolean sS
    Boolean rR
    Boolean gG
    Boolean eE
    Boolean mM
    Boolean nN
    Boolean uU
    Boolean aA
    Boolean cC
  }
  command <<<
    alfred consensus \
      ~{true="-f" false="" fF} \
      ~{true="-d" false="" dD} \
      ~{true="-t" false="" tT} \
      ~{true="-q" false="" qQ} \
      ~{true="-p" false="" pP} \
      ~{true="-w" false="" wW} \
      ~{true="-s" false="" sS} \
      ~{true="-r" false="" rR} \
      ~{true="-g" false="" gG} \
      ~{true="-e" false="" eE} \
      ~{true="-m" false="" mM} \
      ~{true="-n" false="" nN} \
      ~{true="-u" false="" uU} \
      ~{true="-a" false="" aA} \
      ~{true="-c" false="" cC}
  >>>
}