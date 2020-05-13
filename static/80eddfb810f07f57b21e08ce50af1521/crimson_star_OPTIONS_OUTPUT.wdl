version 1.0

task CrimsonStarOPTIONSOUTPUT {
  input {
    String? inputInput
    String? outputOutput
  }
  command <<<
    crimson star OPTIONS OUTPUT \
      ~{inputInput} \
      ~{outputOutput}
  >>>
}