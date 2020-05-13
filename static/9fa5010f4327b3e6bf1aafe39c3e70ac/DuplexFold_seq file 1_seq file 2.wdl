version 1.0

task DuplexFoldSeq file 1Seq file 2 {
  input {
    String? ctCtFile
  }
  command <<<
    DuplexFold seq file 1 seq file 2 \
      ~{ctCtFile}
  >>>
}