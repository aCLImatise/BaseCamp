version 1.0

task GffutilsCliCleanFilename {
  input {
    File? filenameFilename
  }
  command <<<
    gffutils-cli clean filename \
      ~{filenameFilename}
  >>>
}