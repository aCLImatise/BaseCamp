version 1.0

task Isnovoindex {
  input {
    File? filenameFilename
  }
  command <<<
    isnovoindex \
      ~{filenameFilename}
  >>>
}