version 1.0

task DRepDereplicate {
  input {
    String processorsProcessors
    Boolean debugDebug
    Int lengthLength
    String completenessCompleteness
    String contaminationContamination
    Boolean ignoreIgnoreGenomeQuality
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
    String completenessCompletenessWeight
    String contaminationContaminationWeight
    String strainStrainHeterogeneityWeight
    String n50N50Weight
    Int sizeSizeWeight
    Boolean runRunTax
    String taxTaxMethod
    String percentPercent
    String centCentIndex
    String warnWarnDist
    String warnWarnSim
    String warnWarnAln
    Boolean gG
    String checkCheckMMethod
    String genomeGenomeInfo
    String? workWorkDirectory
  }
  command <<<
    dRep dereplicate \
      ~{workWorkDirectory} \
      ~{if defined(processorsProcessors) then ("--processors " +  '"' + processorsProcessors + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(completenessCompleteness) then ("--completeness " +  '"' + completenessCompleteness + '"') else ""} \
      ~{if defined(contaminationContamination) then ("--contamination " +  '"' + contaminationContamination + '"') else ""} \
      ~{true="--ignoreGenomeQuality" false="" ignoreIgnoreGenomeQuality} \
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
      ~{if defined(completenessCompletenessWeight) then ("--completeness_weight " +  '"' + completenessCompletenessWeight + '"') else ""} \
      ~{if defined(contaminationContaminationWeight) then ("--contamination_weight " +  '"' + contaminationContaminationWeight + '"') else ""} \
      ~{if defined(strainStrainHeterogeneityWeight) then ("--strain_heterogeneity_weight " +  '"' + strainStrainHeterogeneityWeight + '"') else ""} \
      ~{if defined(n50N50Weight) then ("--N50_weight " +  '"' + n50N50Weight + '"') else ""} \
      ~{if defined(sizeSizeWeight) then ("--size_weight " +  '"' + sizeSizeWeight + '"') else ""} \
      ~{true="--run_tax" false="" runRunTax} \
      ~{if defined(taxTaxMethod) then ("--tax_method " +  '"' + taxTaxMethod + '"') else ""} \
      ~{if defined(percentPercent) then ("--percent " +  '"' + percentPercent + '"') else ""} \
      ~{if defined(centCentIndex) then ("--cent_index " +  '"' + centCentIndex + '"') else ""} \
      ~{if defined(warnWarnDist) then ("--warn_dist " +  '"' + warnWarnDist + '"') else ""} \
      ~{if defined(warnWarnSim) then ("--warn_sim " +  '"' + warnWarnSim + '"') else ""} \
      ~{if defined(warnWarnAln) then ("--warn_aln " +  '"' + warnWarnAln + '"') else ""} \
      ~{true="-g" false="" gG} \
      ~{if defined(checkCheckMMethod) then ("--checkM_method " +  '"' + checkCheckMMethod + '"') else ""} \
      ~{if defined(genomeGenomeInfo) then ("--genomeInfo " +  '"' + genomeGenomeInfo + '"') else ""}
  >>>
}