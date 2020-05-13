version 1.0

task ArbNameServer {
  input {
    Boolean sS
    Boolean eE
    Boolean aA
    Boolean dD
    Boolean fF
    Boolean rR
    Boolean dD
    Boolean jJ
    Boolean mM
    Boolean pP
    Boolean tT
    String? commandCommand
    String? serverServerParameters
  }
  command <<<
    arb_name_server \
      ~{commandCommand} \
      ~{true="-s" false="" sS} \
      ~{true="-e" false="" eE} \
      ~{true="-a" false="" aA} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{true="-r" false="" rR} \
      ~{true="-D" false="" dD} \
      ~{true="-J" false="" jJ} \
      ~{true="-M" false="" mM} \
      ~{true="-P" false="" pP} \
      ~{true="-T" false="" tT} \
      ~{serverServerParameters}
  >>>
}