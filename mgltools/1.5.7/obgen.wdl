version 1.0

task Obgen {
  input {
    Boolean ffFf
    File? filenameFilename
  }
  command <<<
    obgen \
      ~{filenameFilename} \
      ~{true="-ff" false="" ffFf}
  >>>
}