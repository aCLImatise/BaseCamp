version 1.0

task NAPSSCt file {
  input {
    String? seqSeqFile
    String? nmrNmrFile
    String? ctCtFile
  }
  command <<<
    NAPSS ct file \
      ~{seqSeqFile} \
      ~{nmrNmrFile} \
      ~{ctCtFile}
  >>>
}