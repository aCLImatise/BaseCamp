version 1.0

task CrimsonFlagstatOPTIONSOUTPUT {
  input {
    String? inputInput
    String? outputOutput
  }
  command <<<
    crimson flagstat OPTIONS OUTPUT \
      ~{inputInput} \
      ~{outputOutput}
  >>>
}