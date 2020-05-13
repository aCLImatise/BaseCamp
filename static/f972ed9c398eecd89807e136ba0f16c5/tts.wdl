version 1.0

task Tts {
  input {
    Boolean eE
    Boolean httpHttpHeader
    Boolean debugDebug
    Boolean debugDebugTokens
    Boolean newNewCache
    Boolean newNewCaptureWarnings
    Boolean newNewSafe
    Boolean newNewStack
    Boolean newNewStrict
    Boolean newNewVerboseErrors
    Boolean newNewWarnIds
    Boolean newNewMonolith
    Boolean newNewAddArgs
    Boolean newNewCacheDir
    Boolean newNewDelimiters
    Boolean newNewHeader
    Boolean newNewIncludePaths
    Boolean newNewIoLayer
    Boolean newNewPreChomp
    Boolean newNewPostChomp
    Boolean compileCompileParam
    Boolean compileCompileId
    Boolean compileCompileMapKeys
    Boolean compileCompileChkMt
  }
  command <<<
    tts \
      ~{true="-e" false="" eE} \
      ~{true="--http-header" false="" httpHttpHeader} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--debug-tokens" false="" debugDebugTokens} \
      ~{true="--new-cache" false="" newNewCache} \
      ~{true="--new-capture-warnings" false="" newNewCaptureWarnings} \
      ~{true="--new-safe" false="" newNewSafe} \
      ~{true="--new-stack" false="" newNewStack} \
      ~{true="--new-strict" false="" newNewStrict} \
      ~{true="--new-verbose_errors" false="" newNewVerboseErrors} \
      ~{true="--new-warn-ids" false="" newNewWarnIds} \
      ~{true="--new-monolith" false="" newNewMonolith} \
      ~{true="--new-add-args" false="" newNewAddArgs} \
      ~{true="--new-cache-dir" false="" newNewCacheDir} \
      ~{true="--new-delimiters" false="" newNewDelimiters} \
      ~{true="--new-header" false="" newNewHeader} \
      ~{true="--new-include-paths" false="" newNewIncludePaths} \
      ~{true="--new-iolayer" false="" newNewIoLayer} \
      ~{true="--new-pre-chomp" false="" newNewPreChomp} \
      ~{true="--new-post-chomp" false="" newNewPostChomp} \
      ~{true="--compile-param" false="" compileCompileParam} \
      ~{true="--compile-id" false="" compileCompileId} \
      ~{true="--compile-map-keys" false="" compileCompileMapKeys} \
      ~{true="--compile-chkmt" false="" compileCompileChkMt}
  >>>
}