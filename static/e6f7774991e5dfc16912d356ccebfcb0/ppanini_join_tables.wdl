version 1.0

task PpaniniJoinTables {
  input {
    Boolean verboseVerbose
    String inputInput
    String outputOutput
    File fileFileName
    Boolean searchSearchSubdirectories
    String mappingMappingUniref
    String mappingMappingCluster
    Boolean resumeResume
    String scaleScale
  }
  command <<<
    ppanini_join_tables \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(fileFileName) then ("--file_name " +  '"' + fileFileName + '"') else ""} \
      ~{true="--search-subdirectories" false="" searchSearchSubdirectories} \
      ~{if defined(mappingMappingUniref) then ("--mapping-uniref " +  '"' + mappingMappingUniref + '"') else ""} \
      ~{if defined(mappingMappingCluster) then ("--mapping-cluster " +  '"' + mappingMappingCluster + '"') else ""} \
      ~{true="--resume" false="" resumeResume} \
      ~{if defined(scaleScale) then ("--scale " +  '"' + scaleScale + '"') else ""}
  >>>
}