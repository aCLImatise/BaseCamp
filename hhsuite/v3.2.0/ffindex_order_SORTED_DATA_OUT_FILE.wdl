version 1.0

task FfindexOrderSORTEDDATAOUTFILE {
  input {
    String? orderOrderFilename
    String? dataDataFilename
    String? indexIndexFilename
    String? sortedSortedDataOutFile
    String? sortedSortedIndexOutFile
  }
  command <<<
    ffindex_order SORTED_DATA_OUT_FILE \
      ~{orderOrderFilename} \
      ~{dataDataFilename} \
      ~{indexIndexFilename} \
      ~{sortedSortedDataOutFile} \
      ~{sortedSortedIndexOutFile}
  >>>
}