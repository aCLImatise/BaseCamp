version 1.0

task Compute {
  input {
    Boolean nN
    Boolean vV
    Boolean vV
  }
  command <<<
    compute \
      ~{true="-n" false="" nN} \
      ~{true="-v" false="" vV} \
      ~{true="-V" false="" vV}
  >>>
}