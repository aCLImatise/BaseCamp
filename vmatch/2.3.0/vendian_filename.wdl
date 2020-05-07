version 1.0

task VendianFilename {
  input {
    String? bytesBytes
    File? filenameFilename
  }
  command <<<
    vendian filename \
      ~{bytesBytes} \
      ~{filenameFilename}
  >>>
}