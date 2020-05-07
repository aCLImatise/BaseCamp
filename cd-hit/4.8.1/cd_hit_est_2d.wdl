version 1.0

task CdHitEst2d {
  input {
    String? optionsOptions
  }
  command <<<
    cd-hit-est-2d \
      ~{optionsOptions}
  >>>
}