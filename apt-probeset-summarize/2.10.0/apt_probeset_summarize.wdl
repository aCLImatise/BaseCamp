version 1.0

task AptProbesetSummarize {
  input {
    String pP
    String logLogFile
    File qcQcProbeSets
    String chipChipType
    String precisionPrecision
    String explainExplain
    String killKillList
    String timeTimeStart
    String timeTimeEnd
    String timeTimeRunMinutes
    String analysisAnalysisGuid
    String? rmaRmaBg
    String? quantQuantNorm
    String? artifactArtifactReduction
    String? medMedNorm
    String? adapterAdapterTypeNorm
    String? gcGcBg
    String? gcGcCorrection
    String? scaleScaleIntensities
    Int? intensityIntensityReporter
    String? noNoTrans
    String? pmPmOnly
    String? pmPmMm
    String? pmPmGcBg
    String? pmPmSum
    String? plierPlier
    String? seaSea
    String? iterIterPlier
    String? medMedPolish
    String? dabDabG
    String? avgAvgDiff
    String? medianMedian
    String? exprExpr
    String? pcPcASelect
    String? spectSpectSelect
  }
  command <<<
    apt-probeset-summarize \
      ~{rmaRmaBg} \
      ~{pmPmOnly} \
      ~{plierPlier} \
      ~{exprExpr} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(qcQcProbeSets) then ("--qc-probesets " +  '"' + qcQcProbeSets + '"') else ""} \
      ~{if defined(chipChipType) then ("--chip-type " +  '"' + chipChipType + '"') else ""} \
      ~{if defined(precisionPrecision) then ("--precision " +  '"' + precisionPrecision + '"') else ""} \
      ~{if defined(explainExplain) then ("--explain " +  '"' + explainExplain + '"') else ""} \
      ~{if defined(killKillList) then ("--kill-list " +  '"' + killKillList + '"') else ""} \
      ~{if defined(timeTimeStart) then ("--time-start " +  '"' + timeTimeStart + '"') else ""} \
      ~{if defined(timeTimeEnd) then ("--time-end " +  '"' + timeTimeEnd + '"') else ""} \
      ~{if defined(timeTimeRunMinutes) then ("--time-run-minutes " +  '"' + timeTimeRunMinutes + '"') else ""} \
      ~{if defined(analysisAnalysisGuid) then ("--analysis-guid " +  '"' + analysisAnalysisGuid + '"') else ""} \
      ~{quantQuantNorm} \
      ~{pmPmMm} \
      ~{seaSea} \
      ~{pcPcASelect} \
      ~{artifactArtifactReduction} \
      ~{pmPmGcBg} \
      ~{iterIterPlier} \
      ~{spectSpectSelect} \
      ~{medMedNorm} \
      ~{pmPmSum} \
      ~{medMedPolish} \
      ~{adapterAdapterTypeNorm} \
      ~{dabDabG} \
      ~{gcGcBg} \
      ~{avgAvgDiff} \
      ~{gcGcCorrection} \
      ~{medianMedian} \
      ~{scaleScaleIntensities} \
      ~{intensityIntensityReporter} \
      ~{noNoTrans}
  >>>
}