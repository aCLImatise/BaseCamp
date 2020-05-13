version 1.0

task MbFilterSites {
  input {
    String paddingPaddingBp
    Array[String]+ filterFilterFeatures
    String? parParClipSites
    String? filteredFilteredFile
    String? gffGffFile
  }
  command <<<
    mb-filter-sites \
      ~{parParClipSites} \
      ~{if defined(paddingPaddingBp) then ("--padding_bp " +  '"' + paddingPaddingBp + '"') else ""} \
      ~{if defined(filterFilterFeatures) then ("--filter_features " +  '"' + filterFilterFeatures + '"') else ""} \
      ~{filteredFilteredFile} \
      ~{gffGffFile}
  >>>
}