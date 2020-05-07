version 1.0

task CruxSubtractIndexTide index 1Tide index 2 {
  input {
    String? outputOutputIndex
  }
  command <<<
    crux subtract-index tide index 1 tide index 2 \
      ~{outputOutputIndex}
  >>>
}