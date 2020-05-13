version 1.0

task BiomRelativeAbundance.py {
  input {
    String inputInputBiomFp
    String outputOutputTsvFp
    Boolean stabilizeStabilizeVariance
  }
  command <<<
    biom_relative_abundance.py \
      ~{if defined(inputInputBiomFp) then ("--input_biom_fp " +  '"' + inputInputBiomFp + '"') else ""} \
      ~{if defined(outputOutputTsvFp) then ("--output_tsv_fp " +  '"' + outputOutputTsvFp + '"') else ""} \
      ~{true="--stabilize_variance" false="" stabilizeStabilizeVariance}
  >>>
}