version 1.0

task NormalizeTable.py {
  input {
    Boolean verboseVerbose
    String inputInputPath
    String outOutPath
    Boolean outputOutputCssStatistics
    Boolean deDeSeqNegativesToZero
    String algorithmAlgorithm
    Boolean listListAlgorithms
  }
  command <<<
    normalize_table.py \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(inputInputPath) then ("--input_path " +  '"' + inputInputPath + '"') else ""} \
      ~{if defined(outOutPath) then ("--out_path " +  '"' + outOutPath + '"') else ""} \
      ~{true="--output_CSS_statistics" false="" outputOutputCssStatistics} \
      ~{true="--DESeq_negatives_to_zero" false="" deDeSeqNegativesToZero} \
      ~{if defined(algorithmAlgorithm) then ("--algorithm " +  '"' + algorithmAlgorithm + '"') else ""} \
      ~{true="--list_algorithms" false="" listListAlgorithms}
  >>>
}