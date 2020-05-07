version 1.0

task CruxSubtractIndexTide index 2 {
  input {
    String? tideTideIndex1
    String? tideTideIndex2
    String? outputOutputIndex
  }
  command <<<
    crux subtract-index tide index 2 \
      ~{tideTideIndex1} \
      ~{tideTideIndex2} \
      ~{outputOutputIndex}
  >>>
}