version 1.0

task GroupSignificance.py {
  input {
    String otuOtuTableFp
    String mappingMappingFp
    String categoryCategory
    String outputOutputFp
  }
  command <<<
    group_significance.py \
      ~{if defined(otuOtuTableFp) then ("--otu_table_fp " +  '"' + otuOtuTableFp + '"') else ""} \
      ~{if defined(mappingMappingFp) then ("--mapping_fp " +  '"' + mappingMappingFp + '"') else ""} \
      ~{if defined(categoryCategory) then ("--category " +  '"' + categoryCategory + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output_fp " +  '"' + outputOutputFp + '"') else ""}
  >>>
}