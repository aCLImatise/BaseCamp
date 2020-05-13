version 1.0

task OligoMatchOligosSequence {
  input {
    String? outputOutputBed
  }
  command <<<
    oligoMatch oligos sequence \
      ~{outputOutputBed}
  >>>
}