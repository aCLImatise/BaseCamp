version 1.0

task FfindexOrderORDERFILENAMEDATAFILENAMEINDEXFILENAMESORTEDDATAOUTFILE {
  input {
    String? sortedSortedIndexOutFile
  }
  command <<<
    ffindex_order ORDER_FILENAME DATA_FILENAME INDEX_FILENAME SORTED_DATA_OUT_FILE \
      ~{sortedSortedIndexOutFile}
  >>>
}