version 1.0

task RadsexSubset {
  input {
    String? optionsOptions
  }
  command <<<
    radsex subset \
      ~{optionsOptions}
  >>>
}