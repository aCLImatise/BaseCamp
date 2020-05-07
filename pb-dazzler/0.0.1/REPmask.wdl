version 1.0

task REPmask {
  input {
    Boolean vV
    Boolean cC
    Boolean nN
  }
  command <<<
    REPmask \
      ~{true="-v" false="" vV} \
      ~{true="-c" false="" cC} \
      ~{true="-n" false="" nN}
  >>>
}