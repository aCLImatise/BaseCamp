version 1.0

task Merauder {
  input {
    String? optionOption
  }
  command <<<
    merauder \
      ~{optionOption}
  >>>
}