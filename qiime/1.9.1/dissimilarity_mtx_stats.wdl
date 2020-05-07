version 1.0

task DissimilarityMtxStats.py {
  input {
    String inputInputDir
    String outputOutputDir
  }
  command <<<
    dissimilarity_mtx_stats.py \
      ~{if defined(inputInputDir) then ("--input_dir " +  '"' + inputInputDir + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}