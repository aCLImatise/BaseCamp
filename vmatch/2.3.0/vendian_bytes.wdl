version 1.0

task VendianBytes {
  input {
    File? filenameFilename
  }
  command <<<
    vendian bytes \
      ~{filenameFilename}
  >>>
}