version 1.0

task NebulizerUpdateToolOPTIONSGALAXY {
  input {
    Boolean installInstallResolverDependencies
    String timeoutTimeout
    Boolean noNoWait
    Boolean checkCheckToolshed
  }
  command <<<
    nebulizer update_tool OPTIONS GALAXY \
      ~{true="--install-resolver-dependencies" false="" installInstallResolverDependencies} \
      ~{if defined(timeoutTimeout) then ("--timeout " +  '"' + timeoutTimeout + '"') else ""} \
      ~{true="--no-wait" false="" noNoWait} \
      ~{true="--check-toolshed" false="" checkCheckToolshed}
  >>>
}