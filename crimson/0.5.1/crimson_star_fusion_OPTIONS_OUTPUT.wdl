version 1.0

task CrimsonStarFusionOPTIONSOUTPUT {
  input {
    String? inputInput
    String? outputOutput
  }
  command <<<
    crimson star-fusion OPTIONS OUTPUT \
      ~{inputInput} \
      ~{outputOutput}
  >>>
}