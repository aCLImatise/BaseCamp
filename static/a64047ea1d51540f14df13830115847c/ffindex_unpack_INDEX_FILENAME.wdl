version 1.0

task FfindexUnpackINDEXFILENAME {
  input {
    String? dataDataFilename
    String? indexIndexFilename
    String? outOutDir
  }
  command <<<
    ffindex_unpack INDEX_FILENAME \
      ~{dataDataFilename} \
      ~{indexIndexFilename} \
      ~{outOutDir}
  >>>
}