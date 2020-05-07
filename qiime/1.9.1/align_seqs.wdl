version 1.0

task AlignSeqs.py {
  input {
    String inputInputFastAFp
  }
  command <<<
    align_seqs.py \
      ~{if defined(inputInputFastAFp) then ("--input_fasta_fp " +  '"' + inputInputFastAFp + '"') else ""}
  >>>
}