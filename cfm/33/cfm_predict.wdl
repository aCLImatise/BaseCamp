version 1.0

task CfmPredict {
  input {
    String? cfmCfmPredictExe
    String? inputInputSmilesOrInchI
    String? probProbThreshForPrune
    String? paramParamFilename
    String? configConfigFilename
    String? includeIncludeAnnotations
    String? outputOutputFilename
    String? applyApplyPostProcessing
  }
  command <<<
    cfm-predict \
      ~{cfmCfmPredictExe} \
      ~{inputInputSmilesOrInchI} \
      ~{probProbThreshForPrune} \
      ~{paramParamFilename} \
      ~{configConfigFilename} \
      ~{includeIncludeAnnotations} \
      ~{outputOutputFilename} \
      ~{applyApplyPostProcessing}
  >>>
}