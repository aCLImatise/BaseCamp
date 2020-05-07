version 1.0

task CleverCore {
  input {
    Boolean vV
    Boolean pP
    Boolean wW
    Boolean lL
    Boolean cC
    Boolean eE
    Boolean fF
    Boolean aA
    Boolean rR
    Boolean cC
    Boolean aA
    Boolean dD
    Boolean dD
    Boolean rR
    Boolean sS
    String? distributionDistributionFile
  }
  command <<<
    clever-core \
      ~{distributionDistributionFile} \
      ~{true="-v" false="" vV} \
      ~{true="-p" false="" pP} \
      ~{true="-w" false="" wW} \
      ~{true="-l" false="" lL} \
      ~{true="-c" false="" cC} \
      ~{true="-e" false="" eE} \
      ~{true="-f" false="" fF} \
      ~{true="-a" false="" aA} \
      ~{true="-r" false="" rR} \
      ~{true="-C" false="" cC} \
      ~{true="-A" false="" aA} \
      ~{true="-d" false="" dD} \
      ~{true="-D" false="" dD} \
      ~{true="-R" false="" rR} \
      ~{true="-S" false="" sS}
  >>>
}