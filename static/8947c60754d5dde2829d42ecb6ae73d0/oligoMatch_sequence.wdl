version 1.0

task OligoMatchSequence {
  input {
    String? oligosOligos
    String? sequenceSequence
    String? outputOutputBed
  }
  command <<<
    oligoMatch sequence \
      ~{oligosOligos} \
      ~{sequenceSequence} \
      ~{outputOutputBed}
  >>>
}