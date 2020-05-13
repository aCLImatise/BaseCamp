version 1.0

task RadsexDepth {
  input {
    String? optionsOptions
  }
  command <<<
    radsex depth \
      ~{optionsOptions}
  >>>
}