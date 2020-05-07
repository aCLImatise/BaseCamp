version 1.0

task FfindexOrderORDERFILENAMEINDEXFILENAME {
  input {
    String? dataDataFilename
    String? indexIndexFilename
    String? sortedSortedDataOutFile
    String? sortedSortedIndexOutFile
  }
  command <<<
    ffindex_order ORDER_FILENAME INDEX_FILENAME \
      ~{dataDataFilename} \
      ~{indexIndexFilename} \
      ~{sortedSortedDataOutFile} \
      ~{sortedSortedIndexOutFile}
  >>>
}