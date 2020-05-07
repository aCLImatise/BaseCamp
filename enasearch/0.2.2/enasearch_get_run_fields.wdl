version 1.0

task EnasearchGetRunFields {
  input {
    String? optionsOptions
  }
  command <<<
    enasearch get_run_fields \
      ~{optionsOptions}
  >>>
}