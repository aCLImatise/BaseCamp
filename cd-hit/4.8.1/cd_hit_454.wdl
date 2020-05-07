version 1.0

task CdHit454 {
  input {
    String? optionsOptions
  }
  command <<<
    cd-hit-454 \
      ~{optionsOptions}
  >>>
}