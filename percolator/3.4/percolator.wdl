version 1.0

task Percolator {
  input {
    String fidoFidoGridSearchMseThreshold
    String nestedNestedXvalBins
    String spectralSpectralCountingFdr
    Boolean trainTrainBestPositive
    String trainTrainFdrInitial
    File parameterParameterFile
    String? otherOther
    String? pintsPintsV
  }
  command <<<
    percolator \
      ~{otherOther} \
      ~{if defined(fidoFidoGridSearchMseThreshold) then ("--fido-gridsearch-mse-threshold " +  '"' + fidoFidoGridSearchMseThreshold + '"') else ""} \
      ~{if defined(nestedNestedXvalBins) then ("--nested-xval-bins " +  '"' + nestedNestedXvalBins + '"') else ""} \
      ~{if defined(spectralSpectralCountingFdr) then ("--spectral-counting-fdr " +  '"' + spectralSpectralCountingFdr + '"') else ""} \
      ~{true="--train-best-positive" false="" trainTrainBestPositive} \
      ~{if defined(trainTrainFdrInitial) then ("--train-fdr-initial " +  '"' + trainTrainFdrInitial + '"') else ""} \
      ~{if defined(parameterParameterFile) then ("--parameter-file " +  '"' + parameterParameterFile + '"') else ""} \
      ~{pintsPintsV}
  >>>
}