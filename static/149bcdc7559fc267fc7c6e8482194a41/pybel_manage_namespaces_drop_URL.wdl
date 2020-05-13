version 1.0

task PybelManageNamespacesDropURL {
  input {
    String? optionsOptions
    String? urlUrl
  }
  command <<<
    pybel manage namespaces drop URL \
      ~{optionsOptions} \
      ~{urlUrl}
  >>>
}