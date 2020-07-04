version 1.0

task _pasteseq {
  input {
    Boolean? pos
  }
  command <<<
    _pasteseq \
      ~{true="-pos" false="" pos}
  >>>
  parameter_meta {
    pos: "integer    [$(asequence.end)] The position in the main input sequence to insert after. To insert before the start use the position 0. (Integer 0 or more)"
  }
}