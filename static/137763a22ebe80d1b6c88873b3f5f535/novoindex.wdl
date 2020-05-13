version 1.0

task Novoindex {
  input {
    Boolean nN
    String? novoNovoIndex
    String? indexIndexFile
    String? sequenceSequenceFiles
  }
  command <<<
    novoindex \
      ~{novoNovoIndex} \
      ~{indexIndexFile} \
      ~{true="-n" false="" nN} \
      ~{sequenceSequenceFiles}
  >>>
}