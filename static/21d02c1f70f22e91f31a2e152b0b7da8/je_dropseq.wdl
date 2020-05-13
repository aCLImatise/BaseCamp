version 1.0

task JeDropseq {
  input {
    String? jeJeDropSeq
  }
  command <<<
    je dropseq \
      ~{jeJeDropSeq}
  >>>
}