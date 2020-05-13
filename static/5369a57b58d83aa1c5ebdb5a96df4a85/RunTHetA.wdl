version 1.0

task RunTHetA.py {
  input {
    String graphGraphFormat
    Boolean bafBaf
    String ratioRatioDev
    Int minMinFrac
    Boolean noNoClustering
    String? queryQueryFile
  }
  command <<<
    RunTHetA.py \
      ~{queryQueryFile} \
      ~{if defined(graphGraphFormat) then ("--GRAPH_FORMAT " +  '"' + graphGraphFormat + '"') else ""} \
      ~{true="--BAF" false="" bafBaf} \
      ~{if defined(ratioRatioDev) then ("--RATIO_DEV " +  '"' + ratioRatioDev + '"') else ""} \
      ~{if defined(minMinFrac) then ("--MIN_FRAC " +  '"' + minMinFrac + '"') else ""} \
      ~{true="--NO_CLUSTERING" false="" noNoClustering}
  >>>
}