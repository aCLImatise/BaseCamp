version 1.0

task ValidateDemultiplexedFasta.py {
  input {
    String mappingMappingFp
    String inputInputFastAFp
  }
  command <<<
    validate_demultiplexed_fasta.py \
      ~{if defined(mappingMappingFp) then ("--mapping_fp " +  '"' + mappingMappingFp + '"') else ""} \
      ~{if defined(inputInputFastAFp) then ("--input_fasta_fp " +  '"' + inputInputFastAFp + '"') else ""}
  >>>
}