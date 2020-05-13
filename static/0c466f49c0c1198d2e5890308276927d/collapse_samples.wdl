version 1.0

task CollapseSamples.py {
  input {
    String inputInputBiomFp
    String mappingMappingFp
    String outputOutputBiomFp
    String outputOutputMappingFp
    String collapseCollapseFields
  }
  command <<<
    collapse_samples.py \
      ~{if defined(inputInputBiomFp) then ("--input_biom_fp " +  '"' + inputInputBiomFp + '"') else ""} \
      ~{if defined(mappingMappingFp) then ("--mapping_fp " +  '"' + mappingMappingFp + '"') else ""} \
      ~{if defined(outputOutputBiomFp) then ("--output_biom_fp " +  '"' + outputOutputBiomFp + '"') else ""} \
      ~{if defined(outputOutputMappingFp) then ("--output_mapping_fp " +  '"' + outputOutputMappingFp + '"') else ""} \
      ~{if defined(collapseCollapseFields) then ("--collapse_fields " +  '"' + collapseCollapseFields + '"') else ""}
  >>>
}