version 1.0

task RnaChipIntegrator {
  input {
    Int cutCutOff
    String edgeEdge
    Boolean onlyOnlyDe
    Int numberNumber
    String promoterPromoterRegion
    String nameName
    Boolean compactCompact
    Boolean summarySummary
    Boolean padPad
    Boolean xlsXlsX
    String cutoffsCutoffs
    Array[String]+ genesGenes
    Array[String]+ peaksPeaks
    String nNProcessors
    Boolean splitSplitOutputs
    String analysesAnalyses
    String featureFeature
    String peakPeakCols
    String peakPeakId
    String? genesGenes
    String? peaksPeaks
  }
  command <<<
    RnaChipIntegrator \
      ~{genesGenes} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{if defined(edgeEdge) then ("--edge " +  '"' + edgeEdge + '"') else ""} \
      ~{true="--only-DE" false="" onlyOnlyDe} \
      ~{if defined(numberNumber) then ("--number " +  '"' + numberNumber + '"') else ""} \
      ~{if defined(promoterPromoterRegion) then ("--promoter_region " +  '"' + promoterPromoterRegion + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{true="--compact" false="" compactCompact} \
      ~{true="--summary" false="" summarySummary} \
      ~{true="--pad" false="" padPad} \
      ~{true="--xlsx" false="" xlsXlsX} \
      ~{if defined(cutoffsCutoffs) then ("--cutoffs " +  '"' + cutoffsCutoffs + '"') else ""} \
      ~{if defined(genesGenes) then ("--genes " +  '"' + genesGenes + '"') else ""} \
      ~{if defined(peaksPeaks) then ("--peaks " +  '"' + peaksPeaks + '"') else ""} \
      ~{if defined(nNProcessors) then ("--nprocessors " +  '"' + nNProcessors + '"') else ""} \
      ~{true="--split-outputs" false="" splitSplitOutputs} \
      ~{if defined(analysesAnalyses) then ("--analyses " +  '"' + analysesAnalyses + '"') else ""} \
      ~{if defined(featureFeature) then ("--feature " +  '"' + featureFeature + '"') else ""} \
      ~{if defined(peakPeakCols) then ("--peak_cols " +  '"' + peakPeakCols + '"') else ""} \
      ~{if defined(peakPeakId) then ("--peak_id " +  '"' + peakPeakId + '"') else ""} \
      ~{peaksPeaks}
  >>>
}