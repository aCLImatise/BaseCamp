version 1.0

task EnasearchGetFilterTypes {
  input {
    String? optionsOptions
  }
  command <<<
    enasearch get_filter_types \
      ~{optionsOptions}
  >>>
}