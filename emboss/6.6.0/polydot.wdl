version 1.0

task Polydot {
  input {
    Boolean wordWordSize
  }
  command <<<
    polydot \
      ~{true="-wordsize" false="" wordWordSize}
  >>>
}