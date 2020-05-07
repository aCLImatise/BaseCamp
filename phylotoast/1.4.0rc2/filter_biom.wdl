version 1.0

task FilterBiom.py {
  input {
    String filterFilterOtUidsFnh
    String? inputInputBiomFnh
    String? outputOutputBiomFnh
    String? mappingMappingFnh
  }
  command <<<
    filter_biom.py \
      ~{inputInputBiomFnh} \
      ~{if defined(filterFilterOtUidsFnh) then ("--filter_otuids_fnh " +  '"' + filterFilterOtUidsFnh + '"') else ""} \
      ~{outputOutputBiomFnh} \
      ~{mappingMappingFnh}
  >>>
}