version 1.0

task _seqmatchall {
  input {
    Boolean wordWordSize
  }
  command <<<
    _seqmatchall \
      ~{true="-wordsize" false="" wordWordSize}
  >>>
}