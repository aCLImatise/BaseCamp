version 1.0

task PybelManageEdgesLs {
  input {
    String? optionsOptions
  }
  command <<<
    pybel manage edges ls \
      ~{optionsOptions}
  >>>
}