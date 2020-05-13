version 1.0

task GoFilterSubset.pl {
  input {
    String idId
    String subsetSubset
    String namespaceNamespace
    String filterFilterCode
    Boolean partialPartial
    Boolean useUseCache
  }
  command <<<
    go-filter-subset.pl \
      ~{if defined(idId) then ("-id " +  '"' + idId + '"') else ""} \
      ~{if defined(subsetSubset) then ("-subset " +  '"' + subsetSubset + '"') else ""} \
      ~{if defined(namespaceNamespace) then ("-namespace " +  '"' + namespaceNamespace + '"') else ""} \
      ~{if defined(filterFilterCode) then ("-filter_code " +  '"' + filterFilterCode + '"') else ""} \
      ~{true="-partial" false="" partialPartial} \
      ~{true="-use_cache" false="" useUseCache}
  >>>
}