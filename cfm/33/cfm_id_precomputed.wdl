version 1.0

task CfmIdPrecomputed {
  input {
    String? cfmCfmIdExe
    String? spectrumSpectrumFile
    String? idId
    String? candidateCandidateFile
    String? numNumHighest
    String? ppmPpmMassToL
    String? absAbsMassToL
    String? scoreScoreType
    String? outputOutputFilename
  }
  command <<<
    cfm-id-precomputed \
      ~{cfmCfmIdExe} \
      ~{spectrumSpectrumFile} \
      ~{idId} \
      ~{candidateCandidateFile} \
      ~{numNumHighest} \
      ~{ppmPpmMassToL} \
      ~{absAbsMassToL} \
      ~{scoreScoreType} \
      ~{outputOutputFilename}
  >>>
}