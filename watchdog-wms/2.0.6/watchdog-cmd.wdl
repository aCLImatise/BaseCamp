version 1.0

task WatchdogCmd {
  input {
    Boolean attachAttachInfo
    Boolean autoAutoDetach
    Boolean disableDisableCheckpoint
    Boolean disableDisableMails
    Boolean excludeExclude
    Boolean forceForceLoading
    Boolean ignoreIgnoreExecutor
    Boolean includeInclude
    Boolean logLog
    Boolean mailMailConfig
    Boolean mailMailWaitTime
    Boolean portPort
    Boolean resumeResume
    Boolean simulateSimulate
    Boolean startStart
    Boolean stopStop
    Boolean tmpTmpFolder
    Boolean useUseEnvBase
    Boolean validateValidate
    Boolean versionVersion
  }
  command <<<
    watchdog-cmd \
      ~{true="-attachInfo" false="" attachAttachInfo} \
      ~{true="-autoDetach" false="" autoAutoDetach} \
      ~{true="-disableCheckpoint" false="" disableDisableCheckpoint} \
      ~{true="-disableMails" false="" disableDisableMails} \
      ~{true="-exclude" false="" excludeExclude} \
      ~{true="-forceLoading" false="" forceForceLoading} \
      ~{true="-ignoreExecutor" false="" ignoreIgnoreExecutor} \
      ~{true="-include" false="" includeInclude} \
      ~{true="-log" false="" logLog} \
      ~{true="-mailConfig" false="" mailMailConfig} \
      ~{true="-mailWaitTime" false="" mailMailWaitTime} \
      ~{true="-port" false="" portPort} \
      ~{true="-resume" false="" resumeResume} \
      ~{true="-simulate" false="" simulateSimulate} \
      ~{true="-start" false="" startStart} \
      ~{true="-stop" false="" stopStop} \
      ~{true="-tmpFolder" false="" tmpTmpFolder} \
      ~{true="-useEnvBase" false="" useUseEnvBase} \
      ~{true="-validate" false="" validateValidate} \
      ~{true="-version" false="" versionVersion}
  >>>
}