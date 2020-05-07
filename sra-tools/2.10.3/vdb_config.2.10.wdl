version 1.0

task VdbConfig.2.10.3 {
  input {
    Boolean allAll
    Boolean cfgCfg
    Boolean filesFiles
    Boolean loadLoadPath
    Boolean envEnv
    Boolean modulesModules
    Boolean setSet
    Boolean interactiveInteractive
    String interactiveInteractiveMode
    Boolean restoreRestoreDefaults
    Boolean outputOutput
    Boolean cloudCloudInfo
    Boolean reportReportCloudIdentity
    Boolean acceptAcceptAwsCharges
    File setSetAwsCredentials
    String setSetAwsProfile
    Boolean acceptAcceptGcpCharges
    File setSetGcpCredentials
    Boolean prefetchPrefetchToCwd
    Boolean prefetchPrefetchToUserRepo
    Boolean proxyProxy
    Boolean proxyProxyDisable
    File cfgCfgDir
    Boolean rootRoot
    String logLogLevel
    Boolean verboseVerbose
    Boolean quietQuiet
    File optionOptionFile
  }
  command <<<
    vdb-config.2.10.3 \
      ~{true="--all" false="" allAll} \
      ~{true="--cfg" false="" cfgCfg} \
      ~{true="--files" false="" filesFiles} \
      ~{true="--load-path" false="" loadLoadPath} \
      ~{true="--env" false="" envEnv} \
      ~{true="--modules" false="" modulesModules} \
      ~{true="--set" false="" setSet} \
      ~{true="--interactive" false="" interactiveInteractive} \
      ~{if defined(interactiveInteractiveMode) then ("--interactive-mode " +  '"' + interactiveInteractiveMode + '"') else ""} \
      ~{true="--restore-defaults" false="" restoreRestoreDefaults} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--cloud-info" false="" cloudCloudInfo} \
      ~{true="--report-cloud-identity" false="" reportReportCloudIdentity} \
      ~{true="--accept-aws-charges" false="" acceptAcceptAwsCharges} \
      ~{if defined(setSetAwsCredentials) then ("--set-aws-credentials " +  '"' + setSetAwsCredentials + '"') else ""} \
      ~{if defined(setSetAwsProfile) then ("--set-aws-profile " +  '"' + setSetAwsProfile + '"') else ""} \
      ~{true="--accept-gcp-charges" false="" acceptAcceptGcpCharges} \
      ~{if defined(setSetGcpCredentials) then ("--set-gcp-credentials " +  '"' + setSetGcpCredentials + '"') else ""} \
      ~{true="--prefetch-to-cwd" false="" prefetchPrefetchToCwd} \
      ~{true="--prefetch-to-user-repo" false="" prefetchPrefetchToUserRepo} \
      ~{true="--proxy" false="" proxyProxy} \
      ~{true="--proxy-disable" false="" proxyProxyDisable} \
      ~{if defined(cfgCfgDir) then ("--cfg-dir " +  '"' + cfgCfgDir + '"') else ""} \
      ~{true="--root" false="" rootRoot} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""}
  >>>
}