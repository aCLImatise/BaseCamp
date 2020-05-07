version 1.0

task 2bwtBuilder {
  input {
    String? sequenceSequenceFile
    String? outputOutput
    String? indexIndex
    String? prefixPrefix
  }
  command <<<
    2bwt-builder \
      ~{sequenceSequenceFile} \
      ~{outputOutput} \
      ~{indexIndex} \
      ~{prefixPrefix}
  >>>
}