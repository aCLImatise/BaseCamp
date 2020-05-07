version 1.0

task AdjustSeqOrientation.py {
  input {
    String inputInputFastAFp
  }
  command <<<
    adjust_seq_orientation.py \
      ~{if defined(inputInputFastAFp) then ("--input_fasta_fp " +  '"' + inputInputFastAFp + '"') else ""}
  >>>
}