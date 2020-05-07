version 1.0

task DRepCluster {
  input {
    String processorsProcessors
    Boolean debugDebug
    String mashMashSketch
    String sSAlgorithm
    String nNPreset
    String pPAni
    String sSAni
    Boolean skipSkipMash
    Boolean skipSkipSecondary
    String covCovThresh
    String coverageCoverageMethod
    String clusterClusterAlg
    Boolean gG
    String? workWorkDirectory
  }
  command <<<
    dRep cluster \
      ~{workWorkDirectory} \
      ~{if defined(processorsProcessors) then ("--processors " +  '"' + processorsProcessors + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(mashMashSketch) then ("--MASH_sketch " +  '"' + mashMashSketch + '"') else ""} \
      ~{if defined(sSAlgorithm) then ("--S_algorithm " +  '"' + sSAlgorithm + '"') else ""} \
      ~{if defined(nNPreset) then ("--n_PRESET " +  '"' + nNPreset + '"') else ""} \
      ~{if defined(pPAni) then ("--P_ani " +  '"' + pPAni + '"') else ""} \
      ~{if defined(sSAni) then ("--S_ani " +  '"' + sSAni + '"') else ""} \
      ~{true="--SkipMash" false="" skipSkipMash} \
      ~{true="--SkipSecondary" false="" skipSkipSecondary} \
      ~{if defined(covCovThresh) then ("--cov_thresh " +  '"' + covCovThresh + '"') else ""} \
      ~{if defined(coverageCoverageMethod) then ("--coverage_method " +  '"' + coverageCoverageMethod + '"') else ""} \
      ~{if defined(clusterClusterAlg) then ("--clusterAlg " +  '"' + clusterClusterAlg + '"') else ""} \
      ~{true="-g" false="" gG}
  >>>
}