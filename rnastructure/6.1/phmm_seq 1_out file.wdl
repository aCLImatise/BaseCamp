version 1.0

task PhmmSeq 1Out file {
  input {
    String? seq2Seq2
    String? outfileOutfile
  }
  command <<<
    phmm seq 1 out file \
      ~{seq2Seq2} \
      ~{outfileOutfile}
  >>>
}