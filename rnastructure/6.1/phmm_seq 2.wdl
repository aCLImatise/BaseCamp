version 1.0

task PhmmSeq 2 {
  input {
    String? seq1Seq1
    String? seq2Seq2
    String? outfileOutfile
  }
  command <<<
    phmm seq 2 \
      ~{seq1Seq1} \
      ~{seq2Seq2} \
      ~{outfileOutfile}
  >>>
}