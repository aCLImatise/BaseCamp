version 1.0

task GfapyConvert {
  input {
    File? filenameFilename
  }
  command <<<
    gfapy-convert \
      ~{filenameFilename}
  >>>
}