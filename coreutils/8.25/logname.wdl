version 1.0

task Logname {
  input {
    String? optionOption
  }
  command <<<
    logname \
      ~{optionOption}
  >>>
}