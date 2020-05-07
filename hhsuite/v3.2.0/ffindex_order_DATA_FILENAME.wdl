version 1.0

task FfindexOrderDATAFILENAME {
  input {
    String? orderOrderFilename
    String? dataDataFilename
    String? indexIndexFilename
    String? sortedSortedDataOutFile
    String? sortedSortedIndexOutFile
  }
  command <<<
    ffindex_order DATA_FILENAME \
      ~{orderOrderFilename} \
      ~{dataDataFilename} \
      ~{indexIndexFilename} \
      ~{sortedSortedDataOutFile} \
      ~{sortedSortedIndexOutFile}
  >>>
}