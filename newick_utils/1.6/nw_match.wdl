version 1.0

task NwMatch {
  input {
    Boolean vV
  }
  command <<<
    nw_match \
      ~{true="-v" false="" vV}
  >>>
}