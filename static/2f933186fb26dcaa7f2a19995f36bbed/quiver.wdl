version 1.0

task Quiver {
  input {
    Boolean emitEmitToolContract
    String resolvedResolvedToolContract
    String logLogFile
    String logLogLevel
    Boolean debugDebug
    Boolean quietQuiet
    Boolean verboseVerbose
    String referenceReferenceFilename
    String outputOutputFileName
    String numNumWorkers
    Int minMinConfidence
    Int minMinCoverage
    String noNoEvidenceConsensusCall
    String coverageCoverage
    Int minMinMapQv
    String referenceReferenceWindows
    Boolean alignmentAlignmentSetRefWindows
    String referenceReferenceWindowsFile
    Boolean barcodeBarcode
    String readReadStratum
    Int minMinReadScore
    Int minsMinsNr
    Int minMinZscore
    Int minMinAccuracy
    String parametersParametersFile
    String parametersParametersSpec
    String maskMaskRadius
    String maskMaskErrorRate
    Boolean pdbPdb
    Boolean noNoTrace
    Boolean pdbPdbAtStartup
    Boolean profileProfile
    Boolean annotateAnnotateGff
    Boolean reportReportEffectiveCoverage
    String autoAutoDisableHdf5chunkCache
    String alignerAligner
    Boolean refineRefineDinucleotideRepeats
    Boolean noNoRefineDinucleotideRepeats
    Boolean fastFast
    Boolean skipSkipUnrecognizedContigs
    String? inputInputFileName
  }
  command <<<
    quiver \
      ~{inputInputFileName} \
      ~{true="--emit-tool-contract" false="" emitEmitToolContract} \
      ~{if defined(resolvedResolvedToolContract) then ("--resolved-tool-contract " +  '"' + resolvedResolvedToolContract + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(referenceReferenceFilename) then ("--referenceFilename " +  '"' + referenceReferenceFilename + '"') else ""} \
      ~{if defined(outputOutputFileName) then ("--outputFilename " +  '"' + outputOutputFileName + '"') else ""} \
      ~{if defined(numNumWorkers) then ("--numWorkers " +  '"' + numNumWorkers + '"') else ""} \
      ~{if defined(minMinConfidence) then ("--minConfidence " +  '"' + minMinConfidence + '"') else ""} \
      ~{if defined(minMinCoverage) then ("--minCoverage " +  '"' + minMinCoverage + '"') else ""} \
      ~{if defined(noNoEvidenceConsensusCall) then ("--noEvidenceConsensusCall " +  '"' + noNoEvidenceConsensusCall + '"') else ""} \
      ~{if defined(coverageCoverage) then ("--coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{if defined(minMinMapQv) then ("--minMapQV " +  '"' + minMinMapQv + '"') else ""} \
      ~{if defined(referenceReferenceWindows) then ("--referenceWindows " +  '"' + referenceReferenceWindows + '"') else ""} \
      ~{true="--alignmentSetRefWindows" false="" alignmentAlignmentSetRefWindows} \
      ~{if defined(referenceReferenceWindowsFile) then ("--referenceWindowsFile " +  '"' + referenceReferenceWindowsFile + '"') else ""} \
      ~{true="--barcode" false="" barcodeBarcode} \
      ~{if defined(readReadStratum) then ("--readStratum " +  '"' + readReadStratum + '"') else ""} \
      ~{if defined(minMinReadScore) then ("--minReadScore " +  '"' + minMinReadScore + '"') else ""} \
      ~{if defined(minsMinsNr) then ("--minSnr " +  '"' + minsMinsNr + '"') else ""} \
      ~{if defined(minMinZscore) then ("--minZScore " +  '"' + minMinZscore + '"') else ""} \
      ~{if defined(minMinAccuracy) then ("--minAccuracy " +  '"' + minMinAccuracy + '"') else ""} \
      ~{if defined(parametersParametersFile) then ("--parametersFile " +  '"' + parametersParametersFile + '"') else ""} \
      ~{if defined(parametersParametersSpec) then ("--parametersSpec " +  '"' + parametersParametersSpec + '"') else ""} \
      ~{if defined(maskMaskRadius) then ("--maskRadius " +  '"' + maskMaskRadius + '"') else ""} \
      ~{if defined(maskMaskErrorRate) then ("--maskErrorRate " +  '"' + maskMaskErrorRate + '"') else ""} \
      ~{true="--pdb" false="" pdbPdb} \
      ~{true="--notrace" false="" noNoTrace} \
      ~{true="--pdbAtStartup" false="" pdbPdbAtStartup} \
      ~{true="--profile" false="" profileProfile} \
      ~{true="--annotateGFF" false="" annotateAnnotateGff} \
      ~{true="--reportEffectiveCoverage" false="" reportReportEffectiveCoverage} \
      ~{if defined(autoAutoDisableHdf5chunkCache) then ("--autoDisableHdf5ChunkCache " +  '"' + autoAutoDisableHdf5chunkCache + '"') else ""} \
      ~{if defined(alignerAligner) then ("--aligner " +  '"' + alignerAligner + '"') else ""} \
      ~{true="--refineDinucleotideRepeats" false="" refineRefineDinucleotideRepeats} \
      ~{true="--noRefineDinucleotideRepeats" false="" noNoRefineDinucleotideRepeats} \
      ~{true="--fast" false="" fastFast} \
      ~{true="--skipUnrecognizedContigs" false="" skipSkipUnrecognizedContigs}
  >>>
}