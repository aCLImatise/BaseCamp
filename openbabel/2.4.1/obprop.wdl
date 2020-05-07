version 1.0

task Obprop {
  input {
    File? filenameFilename
  }
  command <<<
    obprop \
      ~{filenameFilename}
  >>>
}