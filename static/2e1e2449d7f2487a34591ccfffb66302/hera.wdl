version 1.0

task Hera {
  input {
    Boolean oO
    Boolean tT
    Boolean zZ
    Boolean bB
    Boolean wW
    Boolean fF
    Boolean pP
  }
  command <<<
    hera \
      ~{true="-o" false="" oO} \
      ~{true="-t" false="" tT} \
      ~{true="-z" false="" zZ} \
      ~{true="-b" false="" bB} \
      ~{true="-w" false="" wW} \
      ~{true="-f" false="" fF} \
      ~{true="-p" false="" pP}
  >>>
}