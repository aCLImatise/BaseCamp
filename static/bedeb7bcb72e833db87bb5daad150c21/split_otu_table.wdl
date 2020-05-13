version 1.0

task SplitOtuTable.py {
  input {
    String biomBiomTableFp
    String mappingMappingFp
    String fieldsFields
    String outputOutputDir
  }
  command <<<
    split_otu_table.py \
      ~{if defined(biomBiomTableFp) then ("--biom_table_fp " +  '"' + biomBiomTableFp + '"') else ""} \
      ~{if defined(mappingMappingFp) then ("--mapping_fp " +  '"' + mappingMappingFp + '"') else ""} \
      ~{if defined(fieldsFields) then ("--fields " +  '"' + fieldsFields + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}