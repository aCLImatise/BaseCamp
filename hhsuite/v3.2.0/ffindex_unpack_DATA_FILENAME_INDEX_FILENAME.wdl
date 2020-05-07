version 1.0

task FfindexUnpackDATAFILENAMEINDEXFILENAME {
  input {
    String? outOutDir
  }
  command <<<
    ffindex_unpack DATA_FILENAME INDEX_FILENAME \
      ~{outOutDir}
  >>>
}