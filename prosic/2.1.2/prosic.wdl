version 1.0

task Prosic {
  input {
    Boolean vV
  }
  command <<<
    prosic \
      ~{true="-v" false="" vV}
  >>>
}