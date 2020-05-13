version 1.0

task FfindexUnpackOUTDIR {
  input {
    String? dataDataFilename
    String? indexIndexFilename
    String? outOutDir
  }
  command <<<
    ffindex_unpack OUT_DIR \
      ~{dataDataFilename} \
      ~{indexIndexFilename} \
      ~{outOutDir}
  >>>
}