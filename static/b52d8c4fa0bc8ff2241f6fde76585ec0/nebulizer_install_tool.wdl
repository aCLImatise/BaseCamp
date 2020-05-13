version 1.0

task NebulizerInstallTool {
  input {
    Boolean installInstallResolverDependencies
    String timeoutTimeout
    Boolean noNoWait
  }
  command <<<
    nebulizer install_tool \
      ~{true="--install-resolver-dependencies" false="" installInstallResolverDependencies} \
      ~{if defined(timeoutTimeout) then ("--timeout " +  '"' + timeoutTimeout + '"') else ""} \
      ~{true="--no-wait" false="" noNoWait}
  >>>
}