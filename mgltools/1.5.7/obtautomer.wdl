version 1.0

task Obtautomer {
  input {
    Boolean cC
    File? filenameFilename
  }
  command <<<
    obtautomer \
      ~{filenameFilename} \
      ~{true="-c" false="" cC}
  >>>
}