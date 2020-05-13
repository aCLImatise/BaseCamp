version 1.0

task EstimateObservationRichness.py {
  input {
    String otuOtuTableFp
    String outputOutputDir
  }
  command <<<
    estimate_observation_richness.py \
      ~{if defined(otuOtuTableFp) then ("--otu_table_fp " +  '"' + otuOtuTableFp + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}