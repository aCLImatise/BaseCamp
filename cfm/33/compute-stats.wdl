version 1.0

task ComputeStats {
  input {
    String? computeComputeStatsExe
    String? inputInputFilename
    String? measuredMeasuredSpecDir
    String? predictedPredictedSpecDir
    String? numNumSpectraPerMol
    String? ppmPpmMassToL
    String? absAbsMassToL
    String? outputOutputFilename
    String? cumulativeCumulativeIntensityThresh
    String? applyApplyCutoffs
    String? cleanCleanTargetSpectra
    String? quantiQuantiSeSpectraDecPl
    String? numNumGroups
  }
  command <<<
    compute-stats \
      ~{computeComputeStatsExe} \
      ~{inputInputFilename} \
      ~{measuredMeasuredSpecDir} \
      ~{predictedPredictedSpecDir} \
      ~{numNumSpectraPerMol} \
      ~{ppmPpmMassToL} \
      ~{absAbsMassToL} \
      ~{outputOutputFilename} \
      ~{cumulativeCumulativeIntensityThresh} \
      ~{applyApplyCutoffs} \
      ~{cleanCleanTargetSpectra} \
      ~{quantiQuantiSeSpectraDecPl} \
      ~{numNumGroups}
  >>>
}