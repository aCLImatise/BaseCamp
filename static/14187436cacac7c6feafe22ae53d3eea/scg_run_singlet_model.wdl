version 1.0

task ScgRunSingletModel {
  input {
    String seedSeed
    String labelsLabelsFile
    Boolean useUsePositionSpecificErrorRate
    String samplesSamplesFile
  }
  command <<<
    scg run_singlet_model \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(labelsLabelsFile) then ("--labels_file " +  '"' + labelsLabelsFile + '"') else ""} \
      ~{true="--use_position_specific_error_rate" false="" useUsePositionSpecificErrorRate} \
      ~{if defined(samplesSamplesFile) then ("--samples_file " +  '"' + samplesSamplesFile + '"') else ""}
  >>>
}