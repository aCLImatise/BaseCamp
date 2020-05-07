version 1.0

task SeqtkMergepeIn2.fq {
  input {
    String? in1fqIn1fq
    String? in2fqIn2fq
  }
  command <<<
    seqtk mergepe in2.fq \
      ~{in1fqIn1fq} \
      ~{in2fqIn2fq}
  >>>
}