version 1.0

task Mean {
  input {
    String? optionOption
  }
  command <<<
    mean \
      ~{optionOption}
  >>>
}