version 1.0

task FfindexOrderINDEXFILENAME {
  input {
    String? orderOrderFilename
    String? dataDataFilename
    String? indexIndexFilename
    String? sortedSortedDataOutFile
    String? sortedSortedIndexOutFile
  }
  command <<<
    ffindex_order INDEX_FILENAME \
      ~{orderOrderFilename} \
      ~{dataDataFilename} \
      ~{indexIndexFilename} \
      ~{sortedSortedDataOutFile} \
      ~{sortedSortedIndexOutFile}
  >>>
}