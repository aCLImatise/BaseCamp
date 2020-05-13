version 1.0

task ParallelPickOtusTrie.py {
  input {
    String inputInputFastAFp
    String outputOutputDir
  }
  command <<<
    parallel_pick_otus_trie.py \
      ~{if defined(inputInputFastAFp) then ("--input_fasta_fp " +  '"' + inputInputFastAFp + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}