version 1.0

task Disty {
  input {
    Boolean nN
    Boolean iI
    Boolean sS
    Boolean vV
    String? alignmentAlignmentFa
  }
  command <<<
    disty \
      ~{alignmentAlignmentFa} \
      ~{true="-n" false="" nN} \
      ~{true="-i" false="" iI} \
      ~{true="-s" false="" sS} \
      ~{true="-v" false="" vV}
  >>>
}