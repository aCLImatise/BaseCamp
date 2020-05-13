version 1.0

task PhmmSeq 1Seq 2 {
  input {
    String? outfileOutfile
  }
  command <<<
    phmm seq 1 seq 2 \
      ~{outfileOutfile}
  >>>
}