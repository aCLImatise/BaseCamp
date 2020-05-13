version 1.0

task _wordmatch {
  input {
    Boolean wordWordSize
  }
  command <<<
    _wordmatch \
      ~{true="-wordsize" false="" wordWordSize}
  >>>
}