version 1.0

task Formatdb {
  input {
    Boolean oO
    Boolean aA
    Boolean bB
    Boolean lL
    Boolean fF
    Boolean bB
    Boolean tT
  }
  command <<<
    formatdb \
      ~{true="-o" false="" oO} \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB} \
      ~{true="-L" false="" lL} \
      ~{true="-F" false="" fF} \
      ~{true="-B" false="" bB} \
      ~{true="-T" false="" tT}
  >>>
}