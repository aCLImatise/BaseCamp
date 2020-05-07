version 1.0

task MockinbirdPostprocess {
  input {
    String prefixPrefix
    String logLogLevel
    String? preprocessPreprocessDir
    String? outputOutputDir
    String? configConfigFile
  }
  command <<<
    mockinbird postprocess \
      ~{preprocessPreprocessDir} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log_level " +  '"' + logLogLevel + '"') else ""} \
      ~{outputOutputDir} \
      ~{configConfigFile}
  >>>
}