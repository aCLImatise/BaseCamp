version 1.0

task FindErrors {
  input {
    Boolean sS
    Boolean oO
    Boolean rR
    Boolean oO
    Boolean eE
    Boolean lL
    Boolean tT
    Boolean dD
    Boolean kK
    Boolean pP
    Boolean vV
    Boolean xX
  }
  command <<<
    findErrors \
      ~{true="-S" false="" sS} \
      ~{true="-O" false="" oO} \
      ~{true="-R" false="" rR} \
      ~{true="-o" false="" oO} \
      ~{true="-e" false="" eE} \
      ~{true="-l" false="" lL} \
      ~{true="-t" false="" tT} \
      ~{true="-d" false="" dD} \
      ~{true="-k" false="" kK} \
      ~{true="-p" false="" pP} \
      ~{true="-V" false="" vV} \
      ~{true="-x" false="" xX}
  >>>
}