version 1.0

task _polydot {
  input {
    Boolean wordWordSize
  }
  command <<<
    _polydot \
      ~{true="-wordsize" false="" wordWordSize}
  >>>
}