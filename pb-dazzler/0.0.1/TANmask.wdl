version 1.0

task TANmask {
  input {
    Boolean vV
    Boolean lL
    Boolean nN
  }
  command <<<
    TANmask \
      ~{true="-v" false="" vV} \
      ~{true="-l" false="" lL} \
      ~{true="-n" false="" nN}
  >>>
}