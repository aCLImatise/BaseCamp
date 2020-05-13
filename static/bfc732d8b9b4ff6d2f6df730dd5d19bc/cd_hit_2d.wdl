version 1.0

task CdHit2d {
  input {
    String? optionsOptions
  }
  command <<<
    cd-hit-2d \
      ~{optionsOptions}
  >>>
}