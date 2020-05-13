version 1.0

task Pool.py {
  input {
    Boolean useUseNd
    Array[String]+ lossLossCoeffs
    String datasetDatasetWeights
    Boolean debugDebug
    Boolean verboseVerbose
    String? probeProbeCountTsv
    String? targetTargetProbeCount
    String? paramParamValsTsv
  }
  command <<<
    pool.py \
      ~{probeProbeCountTsv} \
      ~{true="--use-nd" false="" useUseNd} \
      ~{if defined(lossLossCoeffs) then ("--loss-coeffs " +  '"' + lossLossCoeffs + '"') else ""} \
      ~{if defined(datasetDatasetWeights) then ("--dataset-weights " +  '"' + datasetDatasetWeights + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{targetTargetProbeCount} \
      ~{paramParamValsTsv}
  >>>
}