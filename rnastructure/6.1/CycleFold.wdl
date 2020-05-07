version 1.0

task CycleFold {
  input {
    String? optionsOptions
    String? sequenceSequence
  }
  command <<<
    CycleFold \
      ~{optionsOptions} \
      ~{sequenceSequence}
  >>>
}