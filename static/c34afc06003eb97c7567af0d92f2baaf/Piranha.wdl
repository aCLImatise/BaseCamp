version 1.0

task Piranha {
  input {
    Boolean outputOutput
    Boolean sortSort
    Boolean pPThreshold
    Boolean noNoPvalCorrect
    Boolean backgroundBackgroundThresh
    Boolean binBinSizeReponse
    Boolean binBinSizeCoVars
    Boolean binBinSizeBoth
    Boolean clusterClusterDist
    Boolean suppressSuppressCoVars
    Boolean fitFit
    Boolean distDist
    Boolean fitFitMethod
    Boolean modelModel
    Boolean verboseVerbose
    Boolean unUnStranded
    Boolean noNoNormalisation
    Boolean logLogCoVars
    Boolean aboutAbout
  }
  command <<<
    Piranha \
      ~{true="-output" false="" outputOutput} \
      ~{true="-sort" false="" sortSort} \
      ~{true="-p_threshold" false="" pPThreshold} \
      ~{true="-no_pval_correct" false="" noNoPvalCorrect} \
      ~{true="-background_thresh" false="" backgroundBackgroundThresh} \
      ~{true="-bin_size_reponse" false="" binBinSizeReponse} \
      ~{true="-bin_size_covars" false="" binBinSizeCoVars} \
      ~{true="-bin_size_both" false="" binBinSizeBoth} \
      ~{true="-cluster_dist" false="" clusterClusterDist} \
      ~{true="-suppress_covars" false="" suppressSuppressCoVars} \
      ~{true="-fit" false="" fitFit} \
      ~{true="-dist" false="" distDist} \
      ~{true="-fitMethod" false="" fitFitMethod} \
      ~{true="-model" false="" modelModel} \
      ~{true="-VERBOSE" false="" verboseVerbose} \
      ~{true="-UNSTRANDED" false="" unUnStranded} \
      ~{true="-no_normalisation" false="" noNoNormalisation} \
      ~{true="-log_covars" false="" logLogCoVars} \
      ~{true="-about" false="" aboutAbout}
  >>>
}