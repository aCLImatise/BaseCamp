version 1.0

task PybelManageNamespacesInsertURL {
  input {
    String? optionsOptions
    String? urlUrl
  }
  command <<<
    pybel manage namespaces insert URL \
      ~{optionsOptions} \
      ~{urlUrl}
  >>>
}