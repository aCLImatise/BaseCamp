version 1.0

task MedakaConsensusFromFeatures {
  input {
    Boolean debugDebug
    Boolean quietQuiet
    String modelModel
    String? featuresFeatures
  }
  command <<<
    medaka consensus_from_features \
      ~{featuresFeatures} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""}
  >>>
}