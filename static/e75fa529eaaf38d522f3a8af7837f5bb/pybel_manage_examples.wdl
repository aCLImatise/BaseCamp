version 1.0

task PybelManageExamples {
  input {
    String? optionsOptions
  }
  command <<<
    pybel manage examples \
      ~{optionsOptions}
  >>>
}