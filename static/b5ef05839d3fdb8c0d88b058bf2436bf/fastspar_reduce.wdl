version 1.0

task FastsparReduce {
  input {
    Boolean rR
    Boolean pP
    Boolean oO
    Boolean tT
    Boolean lL
    Boolean vV
  }
  command <<<
    fastspar_reduce \
      ~{true="-r" false="" rR} \
      ~{true="-p" false="" pP} \
      ~{true="-o" false="" oO} \
      ~{true="-t" false="" tT} \
      ~{true="-l" false="" lL} \
      ~{true="-v" false="" vV}
  >>>
}