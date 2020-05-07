version 1.0

task FastsparPvalues {
  input {
    Boolean cC
    Boolean rR
    Boolean pP
    Boolean nN
    Boolean oO
    Boolean sS
    Boolean tT
    Boolean vV
  }
  command <<<
    fastspar_pvalues \
      ~{true="-c" false="" cC} \
      ~{true="-r" false="" rR} \
      ~{true="-p" false="" pP} \
      ~{true="-n" false="" nN} \
      ~{true="-o" false="" oO} \
      ~{true="-s" false="" sS} \
      ~{true="-t" false="" tT} \
      ~{true="-v" false="" vV}
  >>>
}