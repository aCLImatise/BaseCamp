version 1.0

task CdHit {
  input {
    String? optionsOptions
  }
  command <<<
    cd-hit \
      ~{optionsOptions}
  >>>
}