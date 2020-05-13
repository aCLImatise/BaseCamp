version 1.0

task Megamerger {
  input {
    Boolean wordWordSize
  }
  command <<<
    megamerger \
      ~{true="-wordsize" false="" wordWordSize}
  >>>
}