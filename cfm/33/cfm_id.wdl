version 1.0

task CfmId {
  input {
    String? cfmCfmIdExe
    String? spectrumSpectrumFile
    String? idId
    String? candidateCandidateFile
    String? numNumHighest
    String? ppmPpmMassToL
    String? absAbsMassToL
    String? probProbThreshForPrune
    String? paramParamFilename
    String? configConfigFilename
    String? scoreScoreType
    String? applyApplyPostprocessing
    String? outputOutputFilename
    String? outputOutputMspOrMgf
  }
  command <<<
    cfm-id \
      ~{cfmCfmIdExe} \
      ~{spectrumSpectrumFile} \
      ~{idId} \
      ~{candidateCandidateFile} \
      ~{numNumHighest} \
      ~{ppmPpmMassToL} \
      ~{absAbsMassToL} \
      ~{probProbThreshForPrune} \
      ~{paramParamFilename} \
      ~{configConfigFilename} \
      ~{scoreScoreType} \
      ~{applyApplyPostprocessing} \
      ~{outputOutputFilename} \
      ~{outputOutputMspOrMgf}
  >>>
}