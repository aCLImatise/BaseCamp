version 1.0

task Readfq {
  input {
    String? inInSeq
  }
  command <<<
    readfq \
      ~{inInSeq}
  >>>
}