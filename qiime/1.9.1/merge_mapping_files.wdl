version 1.0

task MergeMappingFiles.py {
  input {
    String mappingMappingFps
    String outputOutputFp
  }
  command <<<
    merge_mapping_files.py \
      ~{if defined(mappingMappingFps) then ("--mapping_fps " +  '"' + mappingMappingFps + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output_fp " +  '"' + outputOutputFp + '"') else ""}
  >>>
}