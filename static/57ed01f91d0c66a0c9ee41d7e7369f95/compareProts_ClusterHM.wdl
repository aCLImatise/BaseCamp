version 1.0

task CompareProtsClusterHM.pl {
  input {
    Boolean pP
    Boolean sS
    Boolean wW
    Boolean npNp
    Boolean nfNf
  }
  command <<<
    compareProts_ClusterHM.pl \
      ~{true="-p" false="" pP} \
      ~{true="-s" false="" sS} \
      ~{true="-w" false="" wW} \
      ~{true="-nP" false="" npNp} \
      ~{true="-nF" false="" nfNf}
  >>>
}