version 1.0

task MiniAssemble {
  input {
    Boolean iI
    Boolean rR
    Boolean oO
    Boolean pP
    Boolean tT
    Boolean mM
    Boolean nN
    Boolean wW
    Boolean kK
    Boolean kK
    Boolean cC
    Boolean eE
    Boolean lL
    Boolean xX
  }
  command <<<
    mini_assemble \
      ~{true="-i" false="" iI} \
      ~{true="-r" false="" rR} \
      ~{true="-o" false="" oO} \
      ~{true="-p" false="" pP} \
      ~{true="-t" false="" tT} \
      ~{true="-m" false="" mM} \
      ~{true="-n" false="" nN} \
      ~{true="-w" false="" wW} \
      ~{true="-k" false="" kK} \
      ~{true="-K" false="" kK} \
      ~{true="-c" false="" cC} \
      ~{true="-e" false="" eE} \
      ~{true="-l" false="" lL} \
      ~{true="-x" false="" xX}
  >>>
}