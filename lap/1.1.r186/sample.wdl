version 1.0

task Sample {
  input {
    String? optionOption
  }
  command <<<
    sample \
      ~{optionOption}
  >>>
}