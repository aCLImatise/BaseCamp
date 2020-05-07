version 1.0

task ImagespreadMspList {
  input {
    String? seqSeqNameList
    String? mspMspList
    String? numberNumberOfOutputFiles
  }
  command <<<
    imagespread msp_list \
      ~{seqSeqNameList} \
      ~{mspMspList} \
      ~{numberNumberOfOutputFiles}
  >>>
}