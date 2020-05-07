version 1.0

task PybelManageNamespacesInsertOPTIONS {
  input {
    String? urlUrl
  }
  command <<<
    pybel manage namespaces insert OPTIONS \
      ~{urlUrl}
  >>>
}