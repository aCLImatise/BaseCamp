version 1.0

task PybelManageNodesPrune {
  input {
    String? optionsOptions
  }
  command <<<
    pybel manage nodes prune \
      ~{optionsOptions}
  >>>
}