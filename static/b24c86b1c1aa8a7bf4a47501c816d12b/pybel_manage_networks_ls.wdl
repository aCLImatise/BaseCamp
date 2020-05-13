version 1.0

task PybelManageNetworksLs {
  input {
    String? optionsOptions
  }
  command <<<
    pybel manage networks ls \
      ~{optionsOptions}
  >>>
}