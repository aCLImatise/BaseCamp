version 1.0

task ExtractSharedOrUniqueOtuids.py {
  input {
    String prefixPrefix
    String reverseReverse
    String? inputInputBiomFp
    String? outputOutputDir
    String? mappingMappingFile
    String? categoryCategoryColumn
  }
  command <<<
    extract_shared_or_unique_otuids.py \
      ~{inputInputBiomFp} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(reverseReverse) then ("--reverse " +  '"' + reverseReverse + '"') else ""} \
      ~{outputOutputDir} \
      ~{mappingMappingFile} \
      ~{categoryCategoryColumn}
  >>>
}