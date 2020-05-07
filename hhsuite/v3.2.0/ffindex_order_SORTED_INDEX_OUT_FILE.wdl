version 1.0

task FfindexOrderSORTEDINDEXOUTFILE {
  input {
    String? orderOrderFilename
    String? dataDataFilename
    String? indexIndexFilename
    String? sortedSortedDataOutFile
    String? sortedSortedIndexOutFile
  }
  command <<<
    ffindex_order SORTED_INDEX_OUT_FILE \
      ~{orderOrderFilename} \
      ~{dataDataFilename} \
      ~{indexIndexFilename} \
      ~{sortedSortedDataOutFile} \
      ~{sortedSortedIndexOutFile}
  >>>
}