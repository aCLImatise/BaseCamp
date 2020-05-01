version 1.0

task CfmTrain {
  input {
    String? cfmCfmTrainExe
    String? inputInputFilename
    String? featureFeatureFilename
    String? configConfigFilename
    String? peakPeakFileDir
    String? groupGroup
    String? statusStatusFilename
    String? noNoTrain
    String? startStartEnergy
  }
  command <<<
    cfm-train \
      ~{cfmCfmTrainExe} \
      ~{inputInputFilename} \
      ~{featureFeatureFilename} \
      ~{configConfigFilename} \
      ~{peakPeakFileDir} \
      ~{groupGroup} \
      ~{statusStatusFilename} \
      ~{noNoTrain} \
      ~{startStartEnergy}
  >>>
}