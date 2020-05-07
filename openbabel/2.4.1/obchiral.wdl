version 1.0

task Obchiral {
  input {
    File? filenameFilename
  }
  command <<<
    obchiral \
      ~{filenameFilename}
  >>>
}