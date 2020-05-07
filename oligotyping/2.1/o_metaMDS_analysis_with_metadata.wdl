version 1.0

task OMetaMDSAnalysisWithMetadata.R {
  input {
    String outputOutputFilePrefix
    String distanceDistance
    String mappingMappingVariable
    String titleTitle
    String? scriptScriptR
    String? inputInputMatrix
    String? metadataMetadata
  }
  command <<<
    o-metaMDS-analysis-with-metadata.R \
      ~{scriptScriptR} \
      ~{if defined(outputOutputFilePrefix) then ("--output_file_prefix " +  '"' + outputOutputFilePrefix + '"') else ""} \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(mappingMappingVariable) then ("--mapping_variable " +  '"' + mappingMappingVariable + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{inputInputMatrix} \
      ~{metadataMetadata}
  >>>
}