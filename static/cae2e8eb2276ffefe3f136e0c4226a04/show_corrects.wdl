version 1.0

task ShowCorrects {
  input {
    File? filenameFilename
  }
  command <<<
    show-corrects \
      ~{filenameFilename}
  >>>
}