version 1.0

task MiniAlign {
  input {
    Boolean rR
    Boolean iI
    Boolean iI
    Boolean fF
    Boolean aA
    Boolean pP
    Boolean aA
    Boolean nN
    Boolean cC
    Boolean tT
    Boolean pP
    Boolean mM
    Boolean sS
    Boolean xX
    Boolean xX
  }
  command <<<
    mini_align \
      ~{true="-r" false="" rR} \
      ~{true="-i" false="" iI} \
      ~{true="-I" false="" iI} \
      ~{true="-f" false="" fF} \
      ~{true="-a" false="" aA} \
      ~{true="-P" false="" pP} \
      ~{true="-A" false="" aA} \
      ~{true="-n" false="" nN} \
      ~{true="-c" false="" cC} \
      ~{true="-t" false="" tT} \
      ~{true="-p" false="" pP} \
      ~{true="-m" false="" mM} \
      ~{true="-s" false="" sS} \
      ~{true="-X" false="" xX} \
      ~{true="-x" false="" xX}
  >>>
}