version 1.0

task ExpansionHunter {
  input {
    Boolean vV
    String readsReads
    String referenceReference
    String variantVariantCatalog
    String outputOutputPrefix
    String regionRegionExtensionLength
    String sexSex
    String logLogLevel
    Boolean aA
    Boolean mM
  }
  command <<<
    ExpansionHunter \
      ~{true="-v" false="" vV} \
      ~{if defined(readsReads) then ("--reads " +  '"' + readsReads + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(variantVariantCatalog) then ("--variant-catalog " +  '"' + variantVariantCatalog + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(regionRegionExtensionLength) then ("--region-extension-length " +  '"' + regionRegionExtensionLength + '"') else ""} \
      ~{if defined(sexSex) then ("--sex " +  '"' + sexSex + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{true="-m" false="" mM}
  >>>
}