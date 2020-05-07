version 1.0

task AddAlphaToMappingFile.py {
  input {
    String alphaAlphaFps
    String mappingMappingFp
  }
  command <<<
    add_alpha_to_mapping_file.py \
      ~{if defined(alphaAlphaFps) then ("--alpha_fps " +  '"' + alphaAlphaFps + '"') else ""} \
      ~{if defined(mappingMappingFp) then ("--mapping_fp " +  '"' + mappingMappingFp + '"') else ""}
  >>>
}