version 1.0

task BioxRun {
  input {
    Boolean pluginsPluginsOpts
    Boolean pluginsPlugins
    Boolean omitOmitBefore
    Boolean omitOmitMatch
    Boolean selectSelectBefore
    Boolean selectSelectRules
    Boolean selectSelectMatch
    Boolean omitOmitAfter
    Boolean omitOmitRules
    Boolean selectSelectBetween
    Boolean omitOmitBetween
    Boolean excludeExcludeSamples
    Boolean selectSelectAfter
    Boolean samplesSamples
    Boolean commentCommentChar
    Boolean verboseVerbose
    Boolean autoAutoDeps
    Boolean stdoutStdout
    Boolean workflowWorkflow
    Boolean outfileOutfile
    Boolean configConfig
    Boolean configConfigBase
    Boolean noNoConfigs
    Boolean searchSearch
    Boolean searchSearchPath
    String? helpHelp
  }
  command <<<
    biox run \
      ~{helpHelp} \
      ~{true="--plugins_opts" false="" pluginsPluginsOpts} \
      ~{true="--plugins" false="" pluginsPlugins} \
      ~{true="--omit_before" false="" omitOmitBefore} \
      ~{true="--omit_match" false="" omitOmitMatch} \
      ~{true="--select_before" false="" selectSelectBefore} \
      ~{true="--select_rules" false="" selectSelectRules} \
      ~{true="--select_match" false="" selectSelectMatch} \
      ~{true="--omit_after" false="" omitOmitAfter} \
      ~{true="--omit_rules" false="" omitOmitRules} \
      ~{true="--select_between" false="" selectSelectBetween} \
      ~{true="--omit_between" false="" omitOmitBetween} \
      ~{true="--exclude_samples" false="" excludeExcludeSamples} \
      ~{true="--select_after" false="" selectSelectAfter} \
      ~{true="--samples" false="" samplesSamples} \
      ~{true="--comment_char" false="" commentCommentChar} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--auto_deps" false="" autoAutoDeps} \
      ~{true="--stdout" false="" stdoutStdout} \
      ~{true="--workflow" false="" workflowWorkflow} \
      ~{true="--outfile" false="" outfileOutfile} \
      ~{true="--config" false="" configConfig} \
      ~{true="--config_base" false="" configConfigBase} \
      ~{true="--no_configs" false="" noNoConfigs} \
      ~{true="--search" false="" searchSearch} \
      ~{true="--search_path" false="" searchSearchPath}
  >>>
}