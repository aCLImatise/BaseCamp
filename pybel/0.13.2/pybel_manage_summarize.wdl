version 1.0

task PybelManageSummarize {
  input {
    String? optionsOptions
  }
  command <<<
    pybel manage summarize \
      ~{optionsOptions}
  >>>
}