version 1.0

task Printtime.sh {
  input {
    File? filenameFilename
  }
  command <<<
    printtime.sh \
      ~{filenameFilename}
  >>>
}