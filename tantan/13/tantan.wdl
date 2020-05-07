version 1.0

task Tantan {
  input {
    Boolean pP
    Boolean xX
    Boolean cC
    Boolean mM
    Boolean rR
    Boolean eE
    Boolean wW
    Boolean dD
    Boolean aA
    Boolean bB
    Boolean sS
    Boolean fF
  }
  command <<<
    tantan \
      ~{true="-p" false="" pP} \
      ~{true="-x" false="" xX} \
      ~{true="-c" false="" cC} \
      ~{true="-m" false="" mM} \
      ~{true="-r" false="" rR} \
      ~{true="-e" false="" eE} \
      ~{true="-w" false="" wW} \
      ~{true="-d" false="" dD} \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB} \
      ~{true="-s" false="" sS} \
      ~{true="-f" false="" fF}
  >>>
}