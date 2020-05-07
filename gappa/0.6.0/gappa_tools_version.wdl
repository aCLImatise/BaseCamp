version 1.0

task GappaToolsVersion {
  input {
    String? optionsOptions
  }
  command <<<
    gappa tools version \
      ~{optionsOptions}
  >>>
}