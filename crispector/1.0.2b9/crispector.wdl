version 1.0

task Crispector {
  input {
    Float minMinEditingActivity
    Float translocationTranslocationPValue
    Boolean disableDisableTranslocations
    Boolean overrideOverrideNoiseEstimation
    Float confidenceConfidenceInterval
    Boolean enableEnableSubstitutions
    Boolean suppressSuppressSiteOutput
    Boolean keepKeepIntermediateFiles
    Boolean verboseVerbose
  }
  command <<<
    crispector \
      ~{if defined(minMinEditingActivity) then ("--min_editing_activity " +  '"' + minMinEditingActivity + '"') else ""} \
      ~{if defined(translocationTranslocationPValue) then ("--translocation_p_value " +  '"' + translocationTranslocationPValue + '"') else ""} \
      ~{true="--disable_translocations" false="" disableDisableTranslocations} \
      ~{true="--override_noise_estimation" false="" overrideOverrideNoiseEstimation} \
      ~{if defined(confidenceConfidenceInterval) then ("--confidence_interval " +  '"' + confidenceConfidenceInterval + '"') else ""} \
      ~{true="--enable_substitutions" false="" enableEnableSubstitutions} \
      ~{true="--suppress_site_output" false="" suppressSuppressSiteOutput} \
      ~{true="--keep_intermediate_files" false="" keepKeepIntermediateFiles} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}