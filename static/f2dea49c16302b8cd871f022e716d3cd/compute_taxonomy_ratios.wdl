version 1.0

task ComputeTaxonomyRatios.py {
  input {
    Boolean verboseVerbose
    String inputInput
    String outputOutput
    String increasedIncreased
    String decreasedDecreased
    String indexIndex
    String nameName
    String mappingMappingFile
    String keyKey
    Boolean showShowIndices
  }
  command <<<
    compute_taxonomy_ratios.py \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(increasedIncreased) then ("--increased " +  '"' + increasedIncreased + '"') else ""} \
      ~{if defined(decreasedDecreased) then ("--decreased " +  '"' + decreasedDecreased + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(mappingMappingFile) then ("--mapping_file " +  '"' + mappingMappingFile + '"') else ""} \
      ~{if defined(keyKey) then ("--key " +  '"' + keyKey + '"') else ""} \
      ~{true="--show_indices" false="" showShowIndices}
  >>>
}