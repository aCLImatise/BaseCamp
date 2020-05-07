version 1.0

task FfindexOrderORDERFILENAMESORTEDINDEXOUTFILE {
  input {
    String? dataDataFilename
    String? indexIndexFilename
    String? sortedSortedDataOutFile
    String? sortedSortedIndexOutFile
  }
  command <<<
    ffindex_order ORDER_FILENAME SORTED_INDEX_OUT_FILE \
      ~{dataDataFilename} \
      ~{indexIndexFilename} \
      ~{sortedSortedDataOutFile} \
      ~{sortedSortedIndexOutFile}
  >>>
}