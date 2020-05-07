version 1.0

task AllSubCt file {
  input {
    String? seqSeqFile
    String? ctCtFile
  }
  command <<<
    AllSub ct file \
      ~{seqSeqFile} \
      ~{ctCtFile}
  >>>
}