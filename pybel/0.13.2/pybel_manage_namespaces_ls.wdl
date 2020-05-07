version 1.0

task PybelManageNamespacesLs {
  input {
    String urlUrl
    Int namespaceNamespaceId
  }
  command <<<
    pybel manage namespaces ls \
      ~{if defined(urlUrl) then ("--url " +  '"' + urlUrl + '"') else ""} \
      ~{if defined(namespaceNamespaceId) then ("--namespace-id " +  '"' + namespaceNamespaceId + '"') else ""}
  >>>
}