version 1.0

task NAPSSNMR file {
  input {
    String? seqSeqFile
    String? nmrNmrFile
    String? ctCtFile
  }
  command <<<
    NAPSS NMR file \
      ~{seqSeqFile} \
      ~{nmrNmrFile} \
      ~{ctCtFile}
  >>>
}