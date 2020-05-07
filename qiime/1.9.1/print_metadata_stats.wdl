version 1.0

task PrintMetadataStats.py {
  input {
    String mappingMappingFile
    String categoryCategory
  }
  command <<<
    print_metadata_stats.py \
      ~{if defined(mappingMappingFile) then ("--mapping_file " +  '"' + mappingMappingFile + '"') else ""} \
      ~{if defined(categoryCategory) then ("--category " +  '"' + categoryCategory + '"') else ""}
  >>>
}