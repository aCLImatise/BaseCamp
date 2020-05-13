version 1.0

task ImagespreadSeqNameList {
  input {
    String? mspMspList
    String? numberNumberOfOutputFiles
  }
  command <<<
    imagespread seq_name_list \
      ~{mspMspList} \
      ~{numberNumberOfOutputFiles}
  >>>
}