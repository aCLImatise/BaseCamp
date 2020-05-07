version 1.0

task EnasearchGetDisplayOptions {
  input {
    String? optionsOptions
  }
  command <<<
    enasearch get_display_options \
      ~{optionsOptions}
  >>>
}