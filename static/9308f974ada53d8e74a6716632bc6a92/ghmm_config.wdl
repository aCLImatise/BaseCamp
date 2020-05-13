version 1.0

task GhmmConfig {
  input {
    String? optionsOptions
  }
  command <<<
    ghmm-config \
      ~{optionsOptions}
  >>>
}