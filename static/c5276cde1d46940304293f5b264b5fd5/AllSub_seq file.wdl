version 1.0

task AllSubSeq file {
  input {
    String? ctCtFile
  }
  command <<<
    AllSub seq file \
      ~{ctCtFile}
  >>>
}