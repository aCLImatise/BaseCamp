version 1.0

task BlandAltmanPlot.py {
  input {
    String inputInput
    String designDesign
    String idId
    String groupGroup
    String figureFigure
    String flagFlagDist
    String flagFlagSample
    String flagFlagFeature
    Array[String]+ processProcessOnly
    String residResidCutOff
    String sampleSampleFlagCutOff
    String featureFeatureFlagCutOff
    Boolean debugDebug
  }
  command <<<
    bland_altman_plot.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(designDesign) then ("--design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(idId) then ("--ID " +  '"' + idId + '"') else ""} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{if defined(figureFigure) then ("--figure " +  '"' + figureFigure + '"') else ""} \
      ~{if defined(flagFlagDist) then ("--flag_dist " +  '"' + flagFlagDist + '"') else ""} \
      ~{if defined(flagFlagSample) then ("--flag_sample " +  '"' + flagFlagSample + '"') else ""} \
      ~{if defined(flagFlagFeature) then ("--flag_feature " +  '"' + flagFlagFeature + '"') else ""} \
      ~{if defined(processProcessOnly) then ("--process_only " +  '"' + processProcessOnly + '"') else ""} \
      ~{if defined(residResidCutOff) then ("--resid_cutoff " +  '"' + residResidCutOff + '"') else ""} \
      ~{if defined(sampleSampleFlagCutOff) then ("--sample_flag_cutoff " +  '"' + sampleSampleFlagCutOff + '"') else ""} \
      ~{if defined(featureFeatureFlagCutOff) then ("--feature_flag_cutoff " +  '"' + featureFeatureFlagCutOff + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}