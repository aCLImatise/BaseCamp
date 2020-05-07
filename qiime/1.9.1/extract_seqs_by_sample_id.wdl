version 1.0

task ExtractSeqsBySampleId.py {
  input {
    String inputInputFastAFp
    String outputOutputFastAFp
  }
  command <<<
    extract_seqs_by_sample_id.py \
      ~{if defined(inputInputFastAFp) then ("--input_fasta_fp " +  '"' + inputInputFastAFp + '"') else ""} \
      ~{if defined(outputOutputFastAFp) then ("--output_fasta_fp " +  '"' + outputOutputFastAFp + '"') else ""}
  >>>
}