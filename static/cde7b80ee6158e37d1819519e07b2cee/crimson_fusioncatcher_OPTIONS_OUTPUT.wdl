version 1.0

task CrimsonFusioncatcherOPTIONSOUTPUT {
  input {
    String? inputInput
    String? outputOutput
  }
  command <<<
    crimson fusioncatcher OPTIONS OUTPUT \
      ~{inputInput} \
      ~{outputOutput}
  >>>
}