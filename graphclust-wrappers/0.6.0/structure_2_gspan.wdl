version 1.0

task Structure2Gspan.pl {
  input {
    Boolean tmpTmp
    Boolean oO
  }
  command <<<
    structure_2_gspan.pl \
      ~{true="-tmp" false="" tmpTmp} \
      ~{true="-o" false="" oO}
  >>>
}