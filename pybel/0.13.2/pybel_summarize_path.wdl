version 1.0

task PybelSummarizePath {
  input {
    String? optionsOptions
    File? pathPath
  }
  command <<<
    pybel summarize path \
      ~{optionsOptions} \
      ~{pathPath}
  >>>
}