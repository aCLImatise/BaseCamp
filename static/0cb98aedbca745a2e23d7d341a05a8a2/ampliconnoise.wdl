version 1.0

task Ampliconnoise.py {
  input {
    String mappingMappingFp
    String sffSffFilePath
    String outputOutputFilePath
  }
  command <<<
    ampliconnoise.py \
      ~{if defined(mappingMappingFp) then ("--mapping_fp " +  '"' + mappingMappingFp + '"') else ""} \
      ~{if defined(sffSffFilePath) then ("--sff_filepath " +  '"' + sffSffFilePath + '"') else ""} \
      ~{if defined(outputOutputFilePath) then ("--output_filepath " +  '"' + outputOutputFilePath + '"') else ""}
  >>>
}