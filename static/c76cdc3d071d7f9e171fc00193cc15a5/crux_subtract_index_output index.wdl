version 1.0

task CruxSubtractIndexOutput index {
  input {
    String? tideTideIndex1
    String? tideTideIndex2
    String? outputOutputIndex
  }
  command <<<
    crux subtract-index output index \
      ~{tideTideIndex1} \
      ~{tideTideIndex2} \
      ~{outputOutputIndex}
  >>>
}