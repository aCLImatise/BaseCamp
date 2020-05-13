version 1.0

task PhmmOut file {
  input {
    String? seq1Seq1
    String? seq2Seq2
    String? outfileOutfile
  }
  command <<<
    phmm out file \
      ~{seq1Seq1} \
      ~{seq2Seq2} \
      ~{outfileOutfile}
  >>>
}