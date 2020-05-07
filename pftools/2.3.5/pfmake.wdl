version 1.0

task Pfmake {
  input {
    Boolean aA
    Boolean bB
    Boolean cC
    Boolean eE
    Boolean mM
    Boolean lL
    Boolean sS
    Boolean eE
    Boolean fF
    Boolean gG
    Boolean hH
    Boolean iI
    Boolean lL
    Boolean mM
    Boolean sS
    Boolean tT
    Boolean xX
  }
  command <<<
    pfmake \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB} \
      ~{true="-c" false="" cC} \
      ~{true="-e" false="" eE} \
      ~{true="-m" false="" mM} \
      ~{true="-l" false="" lL} \
      ~{true="-s" false="" sS} \
      ~{true="-E" false="" eE} \
      ~{true="-F" false="" fF} \
      ~{true="-G" false="" gG} \
      ~{true="-H" false="" hH} \
      ~{true="-I" false="" iI} \
      ~{true="-L" false="" lL} \
      ~{true="-M" false="" mM} \
      ~{true="-S" false="" sS} \
      ~{true="-T" false="" tT} \
      ~{true="-X" false="" xX}
  >>>
}