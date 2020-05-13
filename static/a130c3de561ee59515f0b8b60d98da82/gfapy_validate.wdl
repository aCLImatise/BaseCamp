version 1.0

task GfapyValidate {
  input {
    File? filenameFilename
  }
  command <<<
    gfapy-validate \
      ~{filenameFilename}
  >>>
}