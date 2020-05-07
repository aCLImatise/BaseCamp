version 1.0

task CrimsonVepOPTIONSOUTPUT {
  input {
    String? inputInput
    String? outputOutput
  }
  command <<<
    crimson vep OPTIONS OUTPUT \
      ~{inputInput} \
      ~{outputOutput}
  >>>
}