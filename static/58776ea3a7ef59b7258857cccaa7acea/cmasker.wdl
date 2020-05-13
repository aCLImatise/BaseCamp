version 1.0

task Cmasker {
  input {
    Boolean fF
    Boolean jJ
    Boolean oO
    Boolean nN
    Boolean rR
    Boolean tT
    Boolean pP
    Boolean sS
  }
  command <<<
    cmasker \
      ~{true="-f" false="" fF} \
      ~{true="-j" false="" jJ} \
      ~{true="-o" false="" oO} \
      ~{true="-n" false="" nN} \
      ~{true="-r" false="" rR} \
      ~{true="-t" false="" tT} \
      ~{true="-p" false="" pP} \
      ~{true="-s" false="" sS}
  >>>
}