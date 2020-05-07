version 1.0

task CdHitEst {
  input {
    String? optionsOptions
  }
  command <<<
    cd-hit-est \
      ~{optionsOptions}
  >>>
}