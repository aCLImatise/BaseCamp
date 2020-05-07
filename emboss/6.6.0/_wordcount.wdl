version 1.0

task _wordcount {
  input {
    Boolean wordWordSize
  }
  command <<<
    _wordcount \
      ~{true="-wordsize" false="" wordWordSize}
  >>>
}