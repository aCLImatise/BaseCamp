version 1.0

task Redepth.pl {
  input {
    Boolean iI
    Boolean oO
    Boolean bB
    Boolean mM
    Boolean vV
  }
  command <<<
    redepth.pl \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-b" false="" bB} \
      ~{true="-m" false="" mM} \
      ~{true="-v" false="" vV}
  >>>
}