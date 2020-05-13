version 1.0

task SeuratFindNeighbours.R {
  input {
    String inputInputObjectFile
    String inputInputFormat
    String outputOutputFormat
    Boolean distanceDistanceMatrix
    String kKParam
    Boolean computeComputeSnn
    String prunePruneSnn
    String nnNnMethod
    String outputOutputObjectFile
    String annoyAnnoyMetric
    String graphGraphName
    String nnNnEps
    Boolean verboseVerbose
    Boolean forceForceRecalc
    String featuresFeatures
    String reductionReduction
    String dimsDims
    String assayAssay
    Boolean doDoPlot
  }
  command <<<
    seurat-find-neighbours.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--output-format " +  '"' + outputOutputFormat + '"') else ""} \
      ~{true="--distance-matrix" false="" distanceDistanceMatrix} \
      ~{if defined(kKParam) then ("--k-param " +  '"' + kKParam + '"') else ""} \
      ~{true="--compute-snn" false="" computeComputeSnn} \
      ~{if defined(prunePruneSnn) then ("--prune-snn " +  '"' + prunePruneSnn + '"') else ""} \
      ~{if defined(nnNnMethod) then ("--nn-method " +  '"' + nnNnMethod + '"') else ""} \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""} \
      ~{if defined(annoyAnnoyMetric) then ("--annoy-metric " +  '"' + annoyAnnoyMetric + '"') else ""} \
      ~{if defined(graphGraphName) then ("--graph-name " +  '"' + graphGraphName + '"') else ""} \
      ~{if defined(nnNnEps) then ("--nn-eps " +  '"' + nnNnEps + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--force-recalc" false="" forceForceRecalc} \
      ~{if defined(featuresFeatures) then ("--features " +  '"' + featuresFeatures + '"') else ""} \
      ~{if defined(reductionReduction) then ("--reduction " +  '"' + reductionReduction + '"') else ""} \
      ~{if defined(dimsDims) then ("--dims " +  '"' + dimsDims + '"') else ""} \
      ~{if defined(assayAssay) then ("--assay " +  '"' + assayAssay + '"') else ""} \
      ~{true="--do-plot" false="" doDoPlot}
  >>>
}