version 1.0

task FilterFasta.py {
  input {
    Boolean mappingMappingFp
    String inputInputFastAFp
    String outputOutputFastAFp
  }
  command <<<
    filter_fasta.py \
      ~{true="--mapping_fp" false="" mappingMappingFp} \
      ~{if defined(inputInputFastAFp) then ("--input_fasta_fp " +  '"' + inputInputFastAFp + '"') else ""} \
      ~{if defined(outputOutputFastAFp) then ("--output_fasta_fp " +  '"' + outputOutputFastAFp + '"') else ""}
  >>>
}