version 1.0

task BioxWorkflow.plRun {
  input {
    Boolean pluginsPlugins
    Boolean pluginsPluginsOpts
    Boolean selectSelectAfter
    Boolean omitOmitBefore
    Boolean samplesSamples
    Boolean selectSelectRules
    Boolean selectSelectMatch
    Boolean omitOmitBetween
    Boolean selectSelectBetween
    Boolean selectSelectBefore
    Boolean excludeExcludeSamples
    Boolean omitOmitRules
    Boolean omitOmitAfter
    Boolean omitOmitMatch
    Boolean commentCommentChar
    Boolean verboseVerbose
    Boolean autoAutoDeps
    Boolean outfileOutfile
    Boolean workflowWorkflow
    Boolean stdoutStdout
    Boolean configConfig
    Boolean searchSearchPath
    Boolean noNoConfigs
    Boolean configConfigBase
    Boolean searchSearch
    String? helpHelp
  }
  command <<<
    biox-workflow.pl run \
      ~{helpHelp} \
      ~{true="--plugins" false="" pluginsPlugins} \
      ~{true="--plugins_opts" false="" pluginsPluginsOpts} \
      ~{true="--select_after" false="" selectSelectAfter} \
      ~{true="--omit_before" false="" omitOmitBefore} \
      ~{true="--samples" false="" samplesSamples} \
      ~{true="--select_rules" false="" selectSelectRules} \
      ~{true="--select_match" false="" selectSelectMatch} \
      ~{true="--omit_between" false="" omitOmitBetween} \
      ~{true="--select_between" false="" selectSelectBetween} \
      ~{true="--select_before" false="" selectSelectBefore} \
      ~{true="--exclude_samples" false="" excludeExcludeSamples} \
      ~{true="--omit_rules" false="" omitOmitRules} \
      ~{true="--omit_after" false="" omitOmitAfter} \
      ~{true="--omit_match" false="" omitOmitMatch} \
      ~{true="--comment_char" false="" commentCommentChar} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--auto_deps" false="" autoAutoDeps} \
      ~{true="--outfile" false="" outfileOutfile} \
      ~{true="--workflow" false="" workflowWorkflow} \
      ~{true="--stdout" false="" stdoutStdout} \
      ~{true="--config" false="" configConfig} \
      ~{true="--search_path" false="" searchSearchPath} \
      ~{true="--no_configs" false="" noNoConfigs} \
      ~{true="--config_base" false="" configConfigBase} \
      ~{true="--search" false="" searchSearch}
  >>>
}