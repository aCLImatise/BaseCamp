version 1.0

task FfindexUnpackDATAFILENAMEOUTDIR {
  input {
    String? indexIndexFilename
    String? outOutDir
  }
  command <<<
    ffindex_unpack DATA_FILENAME OUT_DIR \
      ~{indexIndexFilename} \
      ~{outOutDir}
  >>>
}