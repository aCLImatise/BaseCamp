version 1.0

task AddUnalignedIntervals {
  input {
    String? inputInputIntervalFile
    String? outputOutputIntervalFile
  }
  command <<<
    addUnalignedIntervals \
      ~{inputInputIntervalFile} \
      ~{outputOutputIntervalFile}
  >>>
}