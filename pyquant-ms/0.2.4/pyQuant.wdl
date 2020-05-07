version 1.0

task PyQuant {
  input {
    String pP
    Boolean scanScanFile
    String scanScanFileDir
    String precisionPrecision
    String precursorPrecursorPpm
    String isotopeIsotopePpm
    Boolean spreadSpread
    String searchSearchFile
    Boolean skipSkip
    Boolean peptidePeptide
    String peptidePeptideFile
    Boolean scanScan
    Boolean mvaMva
    String rtRtWindow
    String labelLabelScheme
    String labelLabelMethod
    String referenceReferenceLabel
    String tsvTsv
    String labelLabel
    String peptidePeptideCol
    String rtRt
    String mzMz
    String scanScanCol
    String chargeCharge
    String sourceSource
    String msnMsnId
    String msnMsnQuantFrom
    Array[String]+ msnMsnIon
    Array[String]+ msnMsnIonRt
    String msnMsnPeakList
    String msnMsnPpm
    Array[String]+ msnMsnRtWindow
    Boolean msnMsnAllScans
    Boolean requireRequireAllIons
    String quantQuantMethod
    Boolean reporterReporterIon
    String isoIsoTopoLogueLimit
    Boolean overlappingOverlappingLabels
    String labelsLabelsNeeded
    Boolean mergeMergeLabels
    Int minMinScans
    Int minMinResolution
    Boolean noNoMassAccuracyCorrection
    Boolean noNoContaminantDetection
    String peakPeakFindMethod
    String peakPeakFindMode
    String gapGapInterpolation
    Boolean fitFitBaseline
    String peakPeakCutOff
    Int maxMaxPeaks
    String peaksPeaksN
    Boolean noNoRtGuide
    String snrSnrFilter
    String zscoreZscoreFilter
    String filterFilterWidth
    String r2R2CutOff
    Int intensityIntensityFilter
    String percentilePercentileFilter
    Int minMinPeakSeparation
    Boolean disableDisablePeakFiltering
    Boolean mergeMergeIsotopes
    String peakPeakResolutionMode
    String xicXicSnr
    String xicXicMissingIonCount
    String xicXicWindowSize
    Boolean xicXicSmooth
    Boolean exportExportMsn
    Boolean debugDebug
    Boolean htmlHtml
    Boolean resumeResume
    String sampleSample
    Boolean disableDisableStats
    Boolean noNoRatios
    Boolean oO
    Boolean exportExportMzmL
    String exportExportMode
    Boolean neuNeuCode
    Boolean isobaricIsobaricTags
    Boolean ms3Ms3
    Boolean maxMaxQuant
    Boolean gcmsGcms
  }
  command <<<
    pyQuant \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="--scan-file" false="" scanScanFile} \
      ~{if defined(scanScanFileDir) then ("--scan-file-dir " +  '"' + scanScanFileDir + '"') else ""} \
      ~{if defined(precisionPrecision) then ("--precision " +  '"' + precisionPrecision + '"') else ""} \
      ~{if defined(precursorPrecursorPpm) then ("--precursor-ppm " +  '"' + precursorPrecursorPpm + '"') else ""} \
      ~{if defined(isotopeIsotopePpm) then ("--isotope-ppm " +  '"' + isotopeIsotopePpm + '"') else ""} \
      ~{true="--spread" false="" spreadSpread} \
      ~{if defined(searchSearchFile) then ("--search-file " +  '"' + searchSearchFile + '"') else ""} \
      ~{true="--skip" false="" skipSkip} \
      ~{true="--peptide" false="" peptidePeptide} \
      ~{if defined(peptidePeptideFile) then ("--peptide-file " +  '"' + peptidePeptideFile + '"') else ""} \
      ~{true="--scan" false="" scanScan} \
      ~{true="--mva" false="" mvaMva} \
      ~{if defined(rtRtWindow) then ("--rt-window " +  '"' + rtRtWindow + '"') else ""} \
      ~{if defined(labelLabelScheme) then ("--label-scheme " +  '"' + labelLabelScheme + '"') else ""} \
      ~{if defined(labelLabelMethod) then ("--label-method " +  '"' + labelLabelMethod + '"') else ""} \
      ~{if defined(referenceReferenceLabel) then ("--reference-label " +  '"' + referenceReferenceLabel + '"') else ""} \
      ~{if defined(tsvTsv) then ("--tsv " +  '"' + tsvTsv + '"') else ""} \
      ~{if defined(labelLabel) then ("--label " +  '"' + labelLabel + '"') else ""} \
      ~{if defined(peptidePeptideCol) then ("--peptide-col " +  '"' + peptidePeptideCol + '"') else ""} \
      ~{if defined(rtRt) then ("--rt " +  '"' + rtRt + '"') else ""} \
      ~{if defined(mzMz) then ("--mz " +  '"' + mzMz + '"') else ""} \
      ~{if defined(scanScanCol) then ("--scan-col " +  '"' + scanScanCol + '"') else ""} \
      ~{if defined(chargeCharge) then ("--charge " +  '"' + chargeCharge + '"') else ""} \
      ~{if defined(sourceSource) then ("--source " +  '"' + sourceSource + '"') else ""} \
      ~{if defined(msnMsnId) then ("--msn-id " +  '"' + msnMsnId + '"') else ""} \
      ~{if defined(msnMsnQuantFrom) then ("--msn-quant-from " +  '"' + msnMsnQuantFrom + '"') else ""} \
      ~{if defined(msnMsnIon) then ("--msn-ion " +  '"' + msnMsnIon + '"') else ""} \
      ~{if defined(msnMsnIonRt) then ("--msn-ion-rt " +  '"' + msnMsnIonRt + '"') else ""} \
      ~{if defined(msnMsnPeakList) then ("--msn-peaklist " +  '"' + msnMsnPeakList + '"') else ""} \
      ~{if defined(msnMsnPpm) then ("--msn-ppm " +  '"' + msnMsnPpm + '"') else ""} \
      ~{if defined(msnMsnRtWindow) then ("--msn-rt-window " +  '"' + msnMsnRtWindow + '"') else ""} \
      ~{true="--msn-all-scans" false="" msnMsnAllScans} \
      ~{true="--require-all-ions" false="" requireRequireAllIons} \
      ~{if defined(quantQuantMethod) then ("--quant-method " +  '"' + quantQuantMethod + '"') else ""} \
      ~{true="--reporter-ion" false="" reporterReporterIon} \
      ~{if defined(isoIsoTopoLogueLimit) then ("--isotopologue-limit " +  '"' + isoIsoTopoLogueLimit + '"') else ""} \
      ~{true="--overlapping-labels" false="" overlappingOverlappingLabels} \
      ~{if defined(labelsLabelsNeeded) then ("--labels-needed " +  '"' + labelsLabelsNeeded + '"') else ""} \
      ~{true="--merge-labels" false="" mergeMergeLabels} \
      ~{if defined(minMinScans) then ("--min-scans " +  '"' + minMinScans + '"') else ""} \
      ~{if defined(minMinResolution) then ("--min-resolution " +  '"' + minMinResolution + '"') else ""} \
      ~{true="--no-mass-accuracy-correction" false="" noNoMassAccuracyCorrection} \
      ~{true="--no-contaminant-detection" false="" noNoContaminantDetection} \
      ~{if defined(peakPeakFindMethod) then ("--peak-find-method " +  '"' + peakPeakFindMethod + '"') else ""} \
      ~{if defined(peakPeakFindMode) then ("--peak-find-mode " +  '"' + peakPeakFindMode + '"') else ""} \
      ~{if defined(gapGapInterpolation) then ("--gap-interpolation " +  '"' + gapGapInterpolation + '"') else ""} \
      ~{true="--fit-baseline" false="" fitFitBaseline} \
      ~{if defined(peakPeakCutOff) then ("--peak-cutoff " +  '"' + peakPeakCutOff + '"') else ""} \
      ~{if defined(maxMaxPeaks) then ("--max-peaks " +  '"' + maxMaxPeaks + '"') else ""} \
      ~{if defined(peaksPeaksN) then ("--peaks-n " +  '"' + peaksPeaksN + '"') else ""} \
      ~{true="--no-rt-guide" false="" noNoRtGuide} \
      ~{if defined(snrSnrFilter) then ("--snr-filter " +  '"' + snrSnrFilter + '"') else ""} \
      ~{if defined(zscoreZscoreFilter) then ("--zscore-filter " +  '"' + zscoreZscoreFilter + '"') else ""} \
      ~{if defined(filterFilterWidth) then ("--filter-width " +  '"' + filterFilterWidth + '"') else ""} \
      ~{if defined(r2R2CutOff) then ("--r2-cutoff " +  '"' + r2R2CutOff + '"') else ""} \
      ~{if defined(intensityIntensityFilter) then ("--intensity-filter " +  '"' + intensityIntensityFilter + '"') else ""} \
      ~{if defined(percentilePercentileFilter) then ("--percentile-filter " +  '"' + percentilePercentileFilter + '"') else ""} \
      ~{if defined(minMinPeakSeparation) then ("--min-peak-separation " +  '"' + minMinPeakSeparation + '"') else ""} \
      ~{true="--disable-peak-filtering" false="" disableDisablePeakFiltering} \
      ~{true="--merge-isotopes" false="" mergeMergeIsotopes} \
      ~{if defined(peakPeakResolutionMode) then ("--peak-resolution-mode " +  '"' + peakPeakResolutionMode + '"') else ""} \
      ~{if defined(xicXicSnr) then ("--xic-snr " +  '"' + xicXicSnr + '"') else ""} \
      ~{if defined(xicXicMissingIonCount) then ("--xic-missing-ion-count " +  '"' + xicXicMissingIonCount + '"') else ""} \
      ~{if defined(xicXicWindowSize) then ("--xic-window-size " +  '"' + xicXicWindowSize + '"') else ""} \
      ~{true="--xic-smooth" false="" xicXicSmooth} \
      ~{true="--export-msn" false="" exportExportMsn} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--html" false="" htmlHtml} \
      ~{true="--resume" false="" resumeResume} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{true="--disable-stats" false="" disableDisableStats} \
      ~{true="--no-ratios" false="" noNoRatios} \
      ~{true="-o" false="" oO} \
      ~{true="--export-mzml" false="" exportExportMzmL} \
      ~{if defined(exportExportMode) then ("--export-mode " +  '"' + exportExportMode + '"') else ""} \
      ~{true="--neucode" false="" neuNeuCode} \
      ~{true="--isobaric-tags" false="" isobaricIsobaricTags} \
      ~{true="--ms3" false="" ms3Ms3} \
      ~{true="--maxquant" false="" maxMaxQuant} \
      ~{true="--gcms" false="" gcmsGcms}
  >>>
}