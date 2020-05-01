version 1.0

task EncyclopeDIA {
  input {
    Boolean iI
    Boolean fF
    Boolean lL
    Boolean browserBrowser
    Boolean libLibExport
    Boolean oO
    Boolean acquisitionAcquisition
    Boolean enzymeEnzyme
    Boolean expectedExpectedPeakWidth
    Boolean filterFilterPeakLists
    Boolean fixedFixed
    Boolean fFOffset
    Boolean fragFrag
    Boolean fFToL
    Boolean fFToLUnits
    Boolean lfLfToL
    Boolean lfLfToLUnits
    Boolean localizationLocalizationModification
    Boolean minMinIntensity
    Boolean minMinNumOfQuantitativePeaks
    Boolean minMinQuantitativeIonNumber
    Boolean numberNumberOfExtraDecoyLibrariesSearchE
    Boolean numberNumberOfQuantitativePeaks
    Boolean percolatorPercolatorProteinThreshold
    Boolean percolatorPercolatorThreshold
    Boolean percolatorPercolatorVersionNumber
    Boolean pPOffset
    Boolean precursorPrecursorIsolationMargin
    Boolean precursorPrecursorWindowSize
    Boolean ptoPtoL
    Boolean ptoPtoLUnits
    Boolean rtRtWindowInMin
    Boolean scoringScoringBreadthType
    Boolean verifyVerifyModificationIons
  }
  command <<<
    EncyclopeDIA \
      ~{true="-i" false="" iI} \
      ~{true="-f" false="" fF} \
      ~{true="-l" false="" lL} \
      ~{true="-browser" false="" browserBrowser} \
      ~{true="-libexport" false="" libLibExport} \
      ~{true="-o" false="" oO} \
      ~{true="-acquisition" false="" acquisitionAcquisition} \
      ~{true="-enzyme" false="" enzymeEnzyme} \
      ~{true="-expectedPeakWidth" false="" expectedExpectedPeakWidth} \
      ~{true="-filterPeaklists" false="" filterFilterPeakLists} \
      ~{true="-fixed" false="" fixedFixed} \
      ~{true="-foffset" false="" fFOffset} \
      ~{true="-frag" false="" fragFrag} \
      ~{true="-ftol" false="" fFToL} \
      ~{true="-ftolunits" false="" fFToLUnits} \
      ~{true="-lftol" false="" lfLfToL} \
      ~{true="-lftolunits" false="" lfLfToLUnits} \
      ~{true="-localizationModification" false="" localizationLocalizationModification} \
      ~{true="-minIntensity" false="" minMinIntensity} \
      ~{true="-minNumOfQuantitativePeaks" false="" minMinNumOfQuantitativePeaks} \
      ~{true="-minQuantitativeIonNumber" false="" minMinQuantitativeIonNumber} \
      ~{true="-numberOfExtraDecoyLibrariesSearche" false="" numberNumberOfExtraDecoyLibrariesSearchE} \
      ~{true="-numberOfQuantitativePeaks" false="" numberNumberOfQuantitativePeaks} \
      ~{true="-percolatorProteinThreshold" false="" percolatorPercolatorProteinThreshold} \
      ~{true="-percolatorThreshold" false="" percolatorPercolatorThreshold} \
      ~{true="-percolatorVersionNumber" false="" percolatorPercolatorVersionNumber} \
      ~{true="-poffset" false="" pPOffset} \
      ~{true="-precursorIsolationMargin" false="" precursorPrecursorIsolationMargin} \
      ~{true="-precursorWindowSize" false="" precursorPrecursorWindowSize} \
      ~{true="-ptol" false="" ptoPtoL} \
      ~{true="-ptolunits" false="" ptoPtoLUnits} \
      ~{true="-rtWindowInMin" false="" rtRtWindowInMin} \
      ~{true="-scoringBreadthType" false="" scoringScoringBreadthType} \
      ~{true="-verifyModificationIons" false="" verifyVerifyModificationIons}
  >>>
}