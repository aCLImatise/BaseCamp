version 1.0

task OligoMatchOutput.bed {
  input {
    String? oligosOligos
    String? sequenceSequence
    String? outputOutputBed
  }
  command <<<
    oligoMatch output.bed \
      ~{oligosOligos} \
      ~{sequenceSequence} \
      ~{outputOutputBed}
  >>>
}