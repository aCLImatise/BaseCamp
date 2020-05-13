version 1.0

task PybelManageNamespacesDropOPTIONS {
  input {
    String? urlUrl
  }
  command <<<
    pybel manage namespaces drop OPTIONS \
      ~{urlUrl}
  >>>
}