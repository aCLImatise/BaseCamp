version 1.0

task _cutseq {
  input {
    Boolean? from
    Boolean? to
  }
  command <<<
    _cutseq \
      ~{true="-from" false="" from} \
      ~{true="-to" false="" to}
  >>>
  parameter_meta {
    from: "integer    [Start of sequence (0)] This is the start position (inclusive) of the section of the sequence that you wish to remove. (Any integer value)"
    to: "integer    [End of sequence (0)] This is the end position (inclusive) of the section of the sequence that you wish to remove. (Any integer value)"
  }
}