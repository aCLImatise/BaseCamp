version 1.0

task Hostid {
  input {
    String? optionOption
  }
  command <<<
    hostid \
      ~{optionOption}
  >>>
}