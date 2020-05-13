version 1.0

task SingularityShell {
  input {
    Boolean appApp
    String bindBind
    Boolean containContain
    Boolean containContainAll
    Boolean cleanCleanEnv
    String homeHome
    Boolean ipcIpc
    Boolean joinJoin
    Boolean netNet
    Boolean nvNv
    Boolean overlayOverlay
    Boolean pidPid
    Boolean pwdPwd
    File scratchScratch
    String shellShell
    Boolean userUserNs
    Boolean workdirWorkdir
    Boolean writableWritable
  }
  command <<<
    singularity shell \
      ~{true="--app" false="" appApp} \
      ~{if defined(bindBind) then ("--bind " +  '"' + bindBind + '"') else ""} \
      ~{true="--contain" false="" containContain} \
      ~{true="--containall" false="" containContainAll} \
      ~{true="--cleanenv" false="" cleanCleanEnv} \
      ~{if defined(homeHome) then ("--home " +  '"' + homeHome + '"') else ""} \
      ~{true="--ipc" false="" ipcIpc} \
      ~{true="--join" false="" joinJoin} \
      ~{true="--net" false="" netNet} \
      ~{true="--nv" false="" nvNv} \
      ~{true="--overlay" false="" overlayOverlay} \
      ~{true="--pid" false="" pidPid} \
      ~{true="--pwd" false="" pwdPwd} \
      ~{if defined(scratchScratch) then ("--scratch " +  '"' + scratchScratch + '"') else ""} \
      ~{if defined(shellShell) then ("--shell " +  '"' + shellShell + '"') else ""} \
      ~{true="--userns" false="" userUserNs} \
      ~{true="--workdir" false="" workdirWorkdir} \
      ~{true="--writable" false="" writableWritable}
  >>>
}