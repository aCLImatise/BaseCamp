version 1.0

task Rename {
  input {
    Boolean aA
    Boolean aA
    Boolean cC
    Boolean cC
    Boolean dD
    Boolean dD
    Boolean eE
    Boolean pP
    Boolean sS
    Boolean sS
    Boolean xX
    Boolean xX
    Boolean zZ
    Boolean camelcaseCamelcase
  }
  command <<<
    rename \
      ~{true="-a" false="" aA} \
      ~{true="-A" false="" aA} \
      ~{true="-c" false="" cC} \
      ~{true="-C" false="" cC} \
      ~{true="-d" false="" dD} \
      ~{true="-D" false="" dD} \
      ~{true="-e" false="" eE} \
      ~{true="-P" false="" pP} \
      ~{true="-s" false="" sS} \
      ~{true="-S" false="" sS} \
      ~{true="-x" false="" xX} \
      ~{true="-X" false="" xX} \
      ~{true="-z" false="" zZ} \
      ~{true="--camelcase" false="" camelcaseCamelcase}
  >>>
}