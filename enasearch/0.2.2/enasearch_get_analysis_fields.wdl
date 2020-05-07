version 1.0

task EnasearchGetAnalysisFields {
  input {
    String? optionsOptions
  }
  command <<<
    enasearch get_analysis_fields \
      ~{optionsOptions}
  >>>
}