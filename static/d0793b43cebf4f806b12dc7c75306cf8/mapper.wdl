version 1.0

task Mapper {
  input {
    Boolean vV
    String? msaMsaFile
  }
  command <<<
    mapper \
      ~{msaMsaFile} \
      ~{true="-v" false="" vV}
  >>>
}