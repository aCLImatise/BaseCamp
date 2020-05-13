version 1.0

task Pasteseq {
  input {
    Boolean posPos
  }
  command <<<
    pasteseq \
      ~{true="-pos" false="" posPos}
  >>>
}