version 1.0

task DRepCompare {
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
    Boolean runRunTax
    String taxTaxMethod
    String percentPercent
    String centCentIndex
    String warnWarnDist
    String warnWarnSim
    String warnWarnAln
    Boolean gG
    String? workWorkDirectory
  }
  command <<<
    dRep compare \
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
      ~{true="--run_tax" false="" runRunTax} \
      ~{if defined(taxTaxMethod) then ("--tax_method " +  '"' + taxTaxMethod + '"') else ""} \
      ~{if defined(percentPercent) then ("--percent " +  '"' + percentPercent + '"') else ""} \
      ~{if defined(centCentIndex) then ("--cent_index " +  '"' + centCentIndex + '"') else ""} \
      ~{if defined(warnWarnDist) then ("--warn_dist " +  '"' + warnWarnDist + '"') else ""} \
      ~{if defined(warnWarnSim) then ("--warn_sim " +  '"' + warnWarnSim + '"') else ""} \
      ~{if defined(warnWarnAln) then ("--warn_aln " +  '"' + warnWarnAln + '"') else ""} \
      ~{true="-g" false="" gG}
  >>>
}