version 1.0

task ObservationMetadataCorrelation.py {
  input {
    String otuOtuTableFp
    String outputOutputFp
    String mappingMappingFp
    String categoryCategory
  }
  command <<<
    observation_metadata_correlation.py \
      ~{if defined(otuOtuTableFp) then ("--otu_table_fp " +  '"' + otuOtuTableFp + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output_fp " +  '"' + outputOutputFp + '"') else ""} \
      ~{if defined(mappingMappingFp) then ("--mapping_fp " +  '"' + mappingMappingFp + '"') else ""} \
      ~{if defined(categoryCategory) then ("--category " +  '"' + categoryCategory + '"') else ""}
  >>>
}