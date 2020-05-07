version 1.0

task IdentifyPairedDifferences.py {
  input {
    String mappingMappingFp
    String outputOutputDir
    String stateStateCategory
    String stateStateValues
    String individualIndividualIdCategory
  }
  command <<<
    identify_paired_differences.py \
      ~{if defined(mappingMappingFp) then ("--mapping_fp " +  '"' + mappingMappingFp + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(stateStateCategory) then ("--state_category " +  '"' + stateStateCategory + '"') else ""} \
      ~{if defined(stateStateValues) then ("--state_values " +  '"' + stateStateValues + '"') else ""} \
      ~{if defined(individualIndividualIdCategory) then ("--individual_id_category " +  '"' + individualIndividualIdCategory + '"') else ""}
  >>>
}