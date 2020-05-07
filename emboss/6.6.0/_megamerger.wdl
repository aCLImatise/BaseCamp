version 1.0

task _megamerger {
  input {
    Boolean wordWordSize
  }
  command <<<
    _megamerger \
      ~{true="-wordsize" false="" wordWordSize}
  >>>
}