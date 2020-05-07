version 1.0

task FfindexOrderORDERFILENAMEDATAFILENAMEINDEXFILENAMESORTEDINDEXOUTFILE {
  input {
    String? sortedSortedDataOutFile
    String? sortedSortedIndexOutFile
  }
  command <<<
    ffindex_order ORDER_FILENAME DATA_FILENAME INDEX_FILENAME SORTED_INDEX_OUT_FILE \
      ~{sortedSortedDataOutFile} \
      ~{sortedSortedIndexOutFile}
  >>>
}