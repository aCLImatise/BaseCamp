version 1.0

task MakeTep.py {
  input {
    String otuOtuTableFp
    String mappingMappingFp
    String treeTreeFp
  }
  command <<<
    make_tep.py \
      ~{if defined(otuOtuTableFp) then ("--otu_table_fp " +  '"' + otuOtuTableFp + '"') else ""} \
      ~{if defined(mappingMappingFp) then ("--mapping_fp " +  '"' + mappingMappingFp + '"') else ""} \
      ~{if defined(treeTreeFp) then ("--tree_fp " +  '"' + treeTreeFp + '"') else ""}
  >>>
}