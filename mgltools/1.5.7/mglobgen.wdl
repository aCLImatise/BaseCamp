version 1.0

task Mglobgen {
  input {
    Boolean ffFf
    String? obObGen
    File? filenameFilename
  }
  command <<<
    mglobgen \
      ~{obObGen} \
      ~{true="-ff" false="" ffFf} \
      ~{filenameFilename}
  >>>
}