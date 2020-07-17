version 1.0

task Crispector {
  input {
    Float? min_editing_activity
    Float? translocation_p_value
    Boolean? disable_translocations
    Boolean? override_noise_estimation
    Float? confidence_interval
    Boolean? enable_substitutions
    Boolean? suppress_site_output
    Boolean? keep_intermediate_files
    Boolean? verbose
  }
  command <<<
    crispector \
      ~{if defined(min_editing_activity) then ("--min_editing_activity " +  '"' + min_editing_activity + '"') else ""} \
      ~{if defined(translocation_p_value) then ("--translocation_p_value " +  '"' + translocation_p_value + '"') else ""} \
      ~{true="--disable_translocations" false="" disable_translocations} \
      ~{true="--override_noise_estimation" false="" override_noise_estimation} \
      ~{if defined(confidence_interval) then ("--confidence_interval " +  '"' + confidence_interval + '"') else ""} \
      ~{true="--enable_substitutions" false="" enable_substitutions} \
      ~{true="--suppress_site_output" false="" suppress_site_output} \
      ~{true="--keep_intermediate_files" false="" keep_intermediate_files} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    min_editing_activity: "RANGE Minimum editing activity (%). Sites with editing activity lower than the minimum, will be discarded from the translocation detection.  [default: 0.1]"
    translocation_p_value: "RANGE Translocations statistical significance level. This threshold is applied on the corrected p_value,FDR (false discovery rate).  [default: 0.05]"
    disable_translocations: "Disable translocations detection  [default: False]"
    override_noise_estimation: "Override noise estimation with default q parameter from crispector_config file. It's advisable to set this flag for experiment with a low number of off-target sites (<5). q is defined as the probability of an indel to occur through an edit event. Check CRISPECTOR paper for more details. [default: False]"
    confidence_interval: "RANGE Confidence interval for the evaluated editing activity  [default: 0.95]"
    enable_substitutions: "Enable substitutions events for the quantification of edit events  [default: False]"
    suppress_site_output: "Do not create plots for sites (save memory and runtime)  [default: False]"
    keep_intermediate_files: "Keep intermediate files for debug purposes [default: False; required]"
    verbose: "Higher verbosity  [default: False]"
  }
}