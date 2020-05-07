version 1.0

task ValidateMappingFile.py {
  input {
    String mappingMappingFp
  }
  command <<<
    validate_mapping_file.py \
      ~{if defined(mappingMappingFp) then ("--mapping_fp " +  '"' + mappingMappingFp + '"') else ""}
  >>>
}