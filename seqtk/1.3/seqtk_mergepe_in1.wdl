version 1.0

task SeqtkMergepeIn1.fq {
  input {
    String? in2fqIn2fq
  }
  command <<<
    seqtk mergepe in1.fq \
      ~{in2fqIn2fq}
  >>>
}