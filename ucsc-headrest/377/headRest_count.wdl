version 1.0

task HeadRestCount {
  input {
    File? filenameFilename
  }
  command <<<
    headRest count \
      ~{filenameFilename}
  >>>
}