version 1.0

task Dottup {
  input {
    Boolean wordWordSize
  }
  command <<<
    dottup \
      ~{true="-wordsize" false="" wordWordSize}
  >>>
}