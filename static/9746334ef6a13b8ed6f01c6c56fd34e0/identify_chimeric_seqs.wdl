version 1.0

task IdentifyChimericSeqs.py {
  input {
    String inputInputFastAFp
  }
  command <<<
    identify_chimeric_seqs.py \
      ~{if defined(inputInputFastAFp) then ("--input_fasta_fp " +  '"' + inputInputFastAFp + '"') else ""}
  >>>
}