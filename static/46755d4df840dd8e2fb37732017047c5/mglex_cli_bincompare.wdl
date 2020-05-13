version 1.0

task MglexCliBincompare {
  input {
    Boolean posteriorPosteriorRatio
    File dataData
    File weightWeight
    Boolean sS
    Boolean sS
    Float betaBeta
    Float prefilterPrefilterThresh
    Float edgeEdgeThresh
    String? binBinCompare
    String? binBinCompare
  }
  command <<<
    mglex-cli bincompare \
      ~{binBinCompare} \
      ~{true="--posterior-ratio" false="" posteriorPosteriorRatio} \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{if defined(weightWeight) then ("--weight " +  '"' + weightWeight + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="-S" false="" sS} \
      ~{if defined(betaBeta) then ("--beta " +  '"' + betaBeta + '"') else ""} \
      ~{if defined(prefilterPrefilterThresh) then ("--prefilter-thresh " +  '"' + prefilterPrefilterThresh + '"') else ""} \
      ~{if defined(edgeEdgeThresh) then ("--edge-thresh " +  '"' + edgeEdgeThresh + '"') else ""} \
      ~{binBinCompare}
  >>>
}