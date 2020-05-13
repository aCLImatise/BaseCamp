version 1.0

task CrimsonPicardOPTIONSOUTPUT {
  input {
    String? inputInput
    String? outputOutput
  }
  command <<<
    crimson picard OPTIONS OUTPUT \
      ~{inputInput} \
      ~{outputOutput}
  >>>
}