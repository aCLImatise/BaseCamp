version 1.0

task AlphaRarefaction.py {
  input {
    String otuOtuTableFp
    String mappingMappingFp
    String outputOutputDir
  }
  command <<<
    alpha_rarefaction.py \
      ~{if defined(otuOtuTableFp) then ("--otu_table_fp " +  '"' + otuOtuTableFp + '"') else ""} \
      ~{if defined(mappingMappingFp) then ("--mapping_fp " +  '"' + mappingMappingFp + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}