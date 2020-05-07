version 1.0

task CrimsonFastqcOPTIONSOUTPUT {
  input {
    String? inputInput
    String? outputOutput
  }
  command <<<
    crimson fastqc OPTIONS OUTPUT \
      ~{inputInput} \
      ~{outputOutput}
  >>>
}