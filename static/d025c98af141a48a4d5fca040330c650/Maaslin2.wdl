version 1.0

task Maaslin2.R {
  input {
    Int minMinAbundance
    Int minMinPrevalence
    Int maxMaxSignificance
    String normalizationNormalization
    String transformTransform
    String analysisAnalysisMethod
    String randomRandomEffects
    String fixedFixedEffects
    String correctionCorrection
    String standardizeStandardize
    String plotPlotHeatMap
    String heatHeatMapFirstN
    String plotPlotScatter
    String coresCores
  }
  command <<<
    Maaslin2.R \
      ~{if defined(minMinAbundance) then ("--min_abundance " +  '"' + minMinAbundance + '"') else ""} \
      ~{if defined(minMinPrevalence) then ("--min_prevalence " +  '"' + minMinPrevalence + '"') else ""} \
      ~{if defined(maxMaxSignificance) then ("--max_significance " +  '"' + maxMaxSignificance + '"') else ""} \
      ~{if defined(normalizationNormalization) then ("--normalization " +  '"' + normalizationNormalization + '"') else ""} \
      ~{if defined(transformTransform) then ("--transform " +  '"' + transformTransform + '"') else ""} \
      ~{if defined(analysisAnalysisMethod) then ("--analysis_method " +  '"' + analysisAnalysisMethod + '"') else ""} \
      ~{if defined(randomRandomEffects) then ("--random_effects " +  '"' + randomRandomEffects + '"') else ""} \
      ~{if defined(fixedFixedEffects) then ("--fixed_effects " +  '"' + fixedFixedEffects + '"') else ""} \
      ~{if defined(correctionCorrection) then ("--correction " +  '"' + correctionCorrection + '"') else ""} \
      ~{if defined(standardizeStandardize) then ("--standardize " +  '"' + standardizeStandardize + '"') else ""} \
      ~{if defined(plotPlotHeatMap) then ("--plot_heatmap " +  '"' + plotPlotHeatMap + '"') else ""} \
      ~{if defined(heatHeatMapFirstN) then ("--heatmap_first_n " +  '"' + heatHeatMapFirstN + '"') else ""} \
      ~{if defined(plotPlotScatter) then ("--plot_scatter " +  '"' + plotPlotScatter + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""}
  >>>
}