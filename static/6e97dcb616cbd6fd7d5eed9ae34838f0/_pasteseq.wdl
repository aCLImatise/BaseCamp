version 1.0

task _pasteseq {
  input {
    Boolean posPos
  }
  command <<<
    _pasteseq \
      ~{true="-pos" false="" posPos}
  >>>
}