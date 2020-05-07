version 1.0

task Prosolo {
  input {
    Boolean vV
  }
  command <<<
    prosolo \
      ~{true="-v" false="" vV}
  >>>
}