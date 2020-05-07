version 1.0

task CruxSubtractIndexTide index 1Output index {
  input {
    String? tideTideIndex2
    String? outputOutputIndex
  }
  command <<<
    crux subtract-index tide index 1 output index \
      ~{tideTideIndex2} \
      ~{outputOutputIndex}
  >>>
}