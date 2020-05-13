version 1.0

task JackknifedBetaDiversity.py {
  input {
    String otuOtuTableFp
    String outputOutputDir
    String seqsSeqsPerSample
    String mappingMappingFp
  }
  command <<<
    jackknifed_beta_diversity.py \
      ~{if defined(otuOtuTableFp) then ("--otu_table_fp " +  '"' + otuOtuTableFp + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(seqsSeqsPerSample) then ("--seqs_per_sample " +  '"' + seqsSeqsPerSample + '"') else ""} \
      ~{if defined(mappingMappingFp) then ("--mapping_fp " +  '"' + mappingMappingFp + '"') else ""}
  >>>
}