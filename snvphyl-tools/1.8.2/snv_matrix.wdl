version 1.0

task SnvMatrix.pl {
  input {
    Boolean vV
    Boolean oO
    String? snvSnvAlignPhy
  }
  command <<<
    snv_matrix.pl \
      ~{snvSnvAlignPhy} \
      ~{true="-v" false="" vV} \
      ~{true="-o" false="" oO}
  >>>
}