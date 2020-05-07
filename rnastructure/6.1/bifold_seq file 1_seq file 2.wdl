version 1.0

task BifoldSeq file 1Seq file 2 {
  input {
    String? ctCtFile
  }
  command <<<
    bifold seq file 1 seq file 2 \
      ~{ctCtFile}
  >>>
}