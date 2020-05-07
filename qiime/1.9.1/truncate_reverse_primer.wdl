version 1.0

task TruncateReversePrimer.py {
  input {
    String fastFastAFp
    String mappingMappingFp
  }
  command <<<
    truncate_reverse_primer.py \
      ~{if defined(fastFastAFp) then ("--fasta_fp " +  '"' + fastFastAFp + '"') else ""} \
      ~{if defined(mappingMappingFp) then ("--mapping_fp " +  '"' + mappingMappingFp + '"') else ""}
  >>>
}