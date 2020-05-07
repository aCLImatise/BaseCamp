version 1.0

task FfindexOrderORDERFILENAMEDATAFILENAMESORTEDDATAOUTFILE {
  input {
    String? indexIndexFilename
    String? sortedSortedDataOutFile
    String? sortedSortedIndexOutFile
  }
  command <<<
    ffindex_order ORDER_FILENAME DATA_FILENAME SORTED_DATA_OUT_FILE \
      ~{indexIndexFilename} \
      ~{sortedSortedDataOutFile} \
      ~{sortedSortedIndexOutFile}
  >>>
}