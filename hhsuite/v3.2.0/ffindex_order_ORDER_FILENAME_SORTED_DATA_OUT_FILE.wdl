version 1.0

task FfindexOrderORDERFILENAMESORTEDDATAOUTFILE {
  input {
    String? dataDataFilename
    String? indexIndexFilename
    String? sortedSortedDataOutFile
    String? sortedSortedIndexOutFile
  }
  command <<<
    ffindex_order ORDER_FILENAME SORTED_DATA_OUT_FILE \
      ~{dataDataFilename} \
      ~{indexIndexFilename} \
      ~{sortedSortedDataOutFile} \
      ~{sortedSortedIndexOutFile}
  >>>
}