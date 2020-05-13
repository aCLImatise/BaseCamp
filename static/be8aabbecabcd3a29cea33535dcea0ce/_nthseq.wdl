version 1.0

task _nthseq {
  input {
    Boolean numberNumber
  }
  command <<<
    _nthseq \
      ~{true="-number" false="" numberNumber}
  >>>
}