version 1.0

task OligoMatchOligosOutput.bed {
  input {
    String? sequenceSequence
    String? outputOutputBed
  }
  command <<<
    oligoMatch oligos output.bed \
      ~{sequenceSequence} \
      ~{outputOutputBed}
  >>>
}