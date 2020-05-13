version 1.0

task AccessFoldSeq file 1Seq file 2 {
  input {
    String? ctCtFile
  }
  command <<<
    AccessFold seq file 1 seq file 2 \
      ~{ctCtFile}
  >>>
}