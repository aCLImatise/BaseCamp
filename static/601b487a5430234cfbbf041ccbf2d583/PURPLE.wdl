version 1.0

task PURPLE {
  input {
    String amberAmber
    String circoCircoS
    String cobaltCobalt
    Boolean dbDbEnabled
    String dbDbPass
    String dbDbUrl
    String dbDbUser
    Boolean driverDriverCatalog
    String gcGcProfile
    String highlyHighlyDiploidPercentage
    String hotspotsHotspots
    String maxMaxNormFactor
    String maxMaxPurity
    String minMinDiploidTumorRatioCount
    String minMinDiploidTumorRatioCountCentromere
    String minMinNormFactor
    String minMinPurity
    Boolean noNoCharts
    String normNormFactorIncrement
    String outputOutputDir
    String ploidyPloidyPenaltyFactor
    String ploidyPloidyPenaltyMin
    String ploidyPloidyPenaltyMinStandardDeviationPerPloidy
    String ploidyPloidyPenaltyStandardDeviation
    String ploidyPloidyPenaltySubMinAdditional
    String ploidyPloidyPenaltySubOneMajorAlleleMultiplier
    String purityPurityIncrement
    String refRefGenome
    String referenceReference
    String somaticSomaticMinPeak
    String somaticSomaticMinPurity
    String somaticSomaticMinPuritySpread
    String somaticSomaticMinTotal
    String somaticSomaticPenaltyWeight
    String somaticSomaticVcf
    String structuralStructuralVcf
    String svSvRecoveryVcf
    String threadsThreads
    String tumorTumor
    Boolean tumorTumorOnly
    Boolean versionVersion
  }
  command <<<
    PURPLE \
      ~{if defined(amberAmber) then ("-amber " +  '"' + amberAmber + '"') else ""} \
      ~{if defined(circoCircoS) then ("-circos " +  '"' + circoCircoS + '"') else ""} \
      ~{if defined(cobaltCobalt) then ("-cobalt " +  '"' + cobaltCobalt + '"') else ""} \
      ~{true="-db_enabled" false="" dbDbEnabled} \
      ~{if defined(dbDbPass) then ("-db_pass " +  '"' + dbDbPass + '"') else ""} \
      ~{if defined(dbDbUrl) then ("-db_url " +  '"' + dbDbUrl + '"') else ""} \
      ~{if defined(dbDbUser) then ("-db_user " +  '"' + dbDbUser + '"') else ""} \
      ~{true="-driver_catalog" false="" driverDriverCatalog} \
      ~{if defined(gcGcProfile) then ("-gc_profile " +  '"' + gcGcProfile + '"') else ""} \
      ~{if defined(highlyHighlyDiploidPercentage) then ("-highly_diploid_percentage " +  '"' + highlyHighlyDiploidPercentage + '"') else ""} \
      ~{if defined(hotspotsHotspots) then ("-hotspots " +  '"' + hotspotsHotspots + '"') else ""} \
      ~{if defined(maxMaxNormFactor) then ("-max_norm_factor " +  '"' + maxMaxNormFactor + '"') else ""} \
      ~{if defined(maxMaxPurity) then ("-max_purity " +  '"' + maxMaxPurity + '"') else ""} \
      ~{if defined(minMinDiploidTumorRatioCount) then ("-min_diploid_tumor_ratio_count " +  '"' + minMinDiploidTumorRatioCount + '"') else ""} \
      ~{if defined(minMinDiploidTumorRatioCountCentromere) then ("-min_diploid_tumor_ratio_count_centromere " +  '"' + minMinDiploidTumorRatioCountCentromere + '"') else ""} \
      ~{if defined(minMinNormFactor) then ("-min_norm_factor " +  '"' + minMinNormFactor + '"') else ""} \
      ~{if defined(minMinPurity) then ("-min_purity " +  '"' + minMinPurity + '"') else ""} \
      ~{true="-no_charts" false="" noNoCharts} \
      ~{if defined(normNormFactorIncrement) then ("-norm_factor_increment " +  '"' + normNormFactorIncrement + '"') else ""} \
      ~{if defined(outputOutputDir) then ("-output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(ploidyPloidyPenaltyFactor) then ("-ploidy_penalty_factor " +  '"' + ploidyPloidyPenaltyFactor + '"') else ""} \
      ~{if defined(ploidyPloidyPenaltyMin) then ("-ploidy_penalty_min " +  '"' + ploidyPloidyPenaltyMin + '"') else ""} \
      ~{if defined(ploidyPloidyPenaltyMinStandardDeviationPerPloidy) then ("-ploidy_penalty_min_standard_deviation_per_ploidy " +  '"' + ploidyPloidyPenaltyMinStandardDeviationPerPloidy + '"') else ""} \
      ~{if defined(ploidyPloidyPenaltyStandardDeviation) then ("-ploidy_penalty_standard_deviation " +  '"' + ploidyPloidyPenaltyStandardDeviation + '"') else ""} \
      ~{if defined(ploidyPloidyPenaltySubMinAdditional) then ("-ploidy_penalty_sub_min_additional " +  '"' + ploidyPloidyPenaltySubMinAdditional + '"') else ""} \
      ~{if defined(ploidyPloidyPenaltySubOneMajorAlleleMultiplier) then ("-ploidy_penalty_sub_one_major_allele_multiplier " +  '"' + ploidyPloidyPenaltySubOneMajorAlleleMultiplier + '"') else ""} \
      ~{if defined(purityPurityIncrement) then ("-purity_increment " +  '"' + purityPurityIncrement + '"') else ""} \
      ~{if defined(refRefGenome) then ("-ref_genome " +  '"' + refRefGenome + '"') else ""} \
      ~{if defined(referenceReference) then ("-reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(somaticSomaticMinPeak) then ("-somatic_min_peak " +  '"' + somaticSomaticMinPeak + '"') else ""} \
      ~{if defined(somaticSomaticMinPurity) then ("-somatic_min_purity " +  '"' + somaticSomaticMinPurity + '"') else ""} \
      ~{if defined(somaticSomaticMinPuritySpread) then ("-somatic_min_purity_spread " +  '"' + somaticSomaticMinPuritySpread + '"') else ""} \
      ~{if defined(somaticSomaticMinTotal) then ("-somatic_min_total " +  '"' + somaticSomaticMinTotal + '"') else ""} \
      ~{if defined(somaticSomaticPenaltyWeight) then ("-somatic_penalty_weight " +  '"' + somaticSomaticPenaltyWeight + '"') else ""} \
      ~{if defined(somaticSomaticVcf) then ("-somatic_vcf " +  '"' + somaticSomaticVcf + '"') else ""} \
      ~{if defined(structuralStructuralVcf) then ("-structural_vcf " +  '"' + structuralStructuralVcf + '"') else ""} \
      ~{if defined(svSvRecoveryVcf) then ("-sv_recovery_vcf " +  '"' + svSvRecoveryVcf + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(tumorTumor) then ("-tumor " +  '"' + tumorTumor + '"') else ""} \
      ~{true="-tumor_only" false="" tumorTumorOnly} \
      ~{true="-version" false="" versionVersion}
  >>>
}