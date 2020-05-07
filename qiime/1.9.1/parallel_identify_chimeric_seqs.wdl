version 1.0

task ParallelIdentifyChimericSeqs.py {
  input {
    String inputInputFastAFp
  }
  command <<<
    parallel_identify_chimeric_seqs.py \
      ~{if defined(inputInputFastAFp) then ("--input_fasta_fp " +  '"' + inputInputFastAFp + '"') else ""}
  >>>
}