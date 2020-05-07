version 1.0

task SingularityExec {
  input {
    Boolean appApp
    String bindBind
    Boolean containContain
    Boolean containContainAll
    Boolean cleanCleanEnv
    String homeHome
    Boolean ipcIpc
    Boolean netNet
    Boolean nvNv
    Boolean overlayOverlay
    Boolean pidPid
    Boolean pwdPwd
    File scratchScratch
    Boolean userUserNs
    Boolean workdirWorkdir
    Boolean writableWritable
  }
  command <<<
    singularity exec \
      ~{true="--app" false="" appApp} \
      ~{if defined(bindBind) then ("--bind " +  '"' + bindBind + '"') else ""} \
      ~{true="--contain" false="" containContain} \
      ~{true="--containall" false="" containContainAll} \
      ~{true="--cleanenv" false="" cleanCleanEnv} \
      ~{if defined(homeHome) then ("--home " +  '"' + homeHome + '"') else ""} \
      ~{true="--ipc" false="" ipcIpc} \
      ~{true="--net" false="" netNet} \
      ~{true="--nv" false="" nvNv} \
      ~{true="--overlay" false="" overlayOverlay} \
      ~{true="--pid" false="" pidPid} \
      ~{true="--pwd" false="" pwdPwd} \
      ~{if defined(scratchScratch) then ("--scratch " +  '"' + scratchScratch + '"') else ""} \
      ~{true="--userns" false="" userUserNs} \
      ~{true="--workdir" false="" workdirWorkdir} \
      ~{true="--writable" false="" writableWritable}
  >>>
}