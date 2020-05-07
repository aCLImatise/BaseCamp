version 1.0

task CfmAnnotate {
  input {
    String? cfmCfmAnnotateExe
    String? smilesSmilesOrInchI
    String? spectrumSpectrumFile
    String? idId
    String? ppmPpmMassToL
    String? absAbsMassToL
    String? paramParamFilename
    String? configConfigFilename
    String? outputOutputFilename
  }
  command <<<
    cfm-annotate \
      ~{cfmCfmAnnotateExe} \
      ~{smilesSmilesOrInchI} \
      ~{spectrumSpectrumFile} \
      ~{idId} \
      ~{ppmPpmMassToL} \
      ~{absAbsMassToL} \
      ~{paramParamFilename} \
      ~{configConfigFilename} \
      ~{outputOutputFilename}
  >>>
}