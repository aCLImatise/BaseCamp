version 1.0

task EufindtRNA {
  input {
    Boolean optionsOptions
    String? sequenceSequenceFile
  }
  command <<<
    eufindtRNA \
      ~{sequenceSequenceFile} \
      ~{true="-options" false="" optionsOptions}
  >>>
}