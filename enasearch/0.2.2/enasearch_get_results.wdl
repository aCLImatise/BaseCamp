version 1.0

task EnasearchGetResults {
  input {
    String? optionsOptions
  }
  command <<<
    enasearch get_results \
      ~{optionsOptions}
  >>>
}