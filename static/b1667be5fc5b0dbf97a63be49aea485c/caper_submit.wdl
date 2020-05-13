version 1.0

task CaperSubmit {
  input {
    Boolean dryDryRun
    Boolean debugDebug
    String portPort
    String ipIp
    Boolean noNoServerHeartbeat
    String serverServerHeartbeatFile
    String serverServerHeartbeatTimeout
    String inputsInputs
    String optionsOptions
    String labelsLabels
    String importsImports
    String strStrLabel
    Boolean holdHold
    String singularitySingularityCacheDir
    Boolean useUseGsUtilForS3
    Boolean noNoDeepcopy
    Boolean ignoreIgnoreWomTool
    String womWomTool
    String backendBackend
    Boolean dockerDocker
    Boolean singularitySingularity
    Boolean noNoBuildSingularity
    String slurSlurMPartition
    String slurSlurMAccount
    String slurSlurMExtraParam
    String sgeSgePe
    String sgeSgeQueue
    String sgeSgeExtraParam
    String pbsPbsQueue
    String pbsPbsExtraParam
    String? wdlWdl
  }
  command <<<
    caper submit \
      ~{wdlWdl} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""} \
      ~{if defined(ipIp) then ("--ip " +  '"' + ipIp + '"') else ""} \
      ~{true="--no-server-heartbeat" false="" noNoServerHeartbeat} \
      ~{if defined(serverServerHeartbeatFile) then ("--server-heartbeat-file " +  '"' + serverServerHeartbeatFile + '"') else ""} \
      ~{if defined(serverServerHeartbeatTimeout) then ("--server-heartbeat-timeout " +  '"' + serverServerHeartbeatTimeout + '"') else ""} \
      ~{if defined(inputsInputs) then ("--inputs " +  '"' + inputsInputs + '"') else ""} \
      ~{if defined(optionsOptions) then ("--options " +  '"' + optionsOptions + '"') else ""} \
      ~{if defined(labelsLabels) then ("--labels " +  '"' + labelsLabels + '"') else ""} \
      ~{if defined(importsImports) then ("--imports " +  '"' + importsImports + '"') else ""} \
      ~{if defined(strStrLabel) then ("--str-label " +  '"' + strStrLabel + '"') else ""} \
      ~{true="--hold" false="" holdHold} \
      ~{if defined(singularitySingularityCacheDir) then ("--singularity-cachedir " +  '"' + singularitySingularityCacheDir + '"') else ""} \
      ~{true="--use-gsutil-for-s3" false="" useUseGsUtilForS3} \
      ~{true="--no-deepcopy" false="" noNoDeepcopy} \
      ~{true="--ignore-womtool" false="" ignoreIgnoreWomTool} \
      ~{if defined(womWomTool) then ("--womtool " +  '"' + womWomTool + '"') else ""} \
      ~{if defined(backendBackend) then ("--backend " +  '"' + backendBackend + '"') else ""} \
      ~{true="--docker" false="" dockerDocker} \
      ~{true="--singularity" false="" singularitySingularity} \
      ~{true="--no-build-singularity" false="" noNoBuildSingularity} \
      ~{if defined(slurSlurMPartition) then ("--slurm-partition " +  '"' + slurSlurMPartition + '"') else ""} \
      ~{if defined(slurSlurMAccount) then ("--slurm-account " +  '"' + slurSlurMAccount + '"') else ""} \
      ~{if defined(slurSlurMExtraParam) then ("--slurm-extra-param " +  '"' + slurSlurMExtraParam + '"') else ""} \
      ~{if defined(sgeSgePe) then ("--sge-pe " +  '"' + sgeSgePe + '"') else ""} \
      ~{if defined(sgeSgeQueue) then ("--sge-queue " +  '"' + sgeSgeQueue + '"') else ""} \
      ~{if defined(sgeSgeExtraParam) then ("--sge-extra-param " +  '"' + sgeSgeExtraParam + '"') else ""} \
      ~{if defined(pbsPbsQueue) then ("--pbs-queue " +  '"' + pbsPbsQueue + '"') else ""} \
      ~{if defined(pbsPbsExtraParam) then ("--pbs-extra-param " +  '"' + pbsPbsExtraParam + '"') else ""}
  >>>
}