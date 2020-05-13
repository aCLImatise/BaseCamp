version 1.0

task ImagespreadNumberOfOutputFiles {
  input {
    String? seqSeqNameList
    String? mspMspList
    String? numberNumberOfOutputFiles
  }
  command <<<
    imagespread number_of_output_files \
      ~{seqSeqNameList} \
      ~{mspMspList} \
      ~{numberNumberOfOutputFiles}
  >>>
}