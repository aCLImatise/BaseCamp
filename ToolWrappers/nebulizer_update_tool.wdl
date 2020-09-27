version 1.0

task NebulizerUpdateTool {
  input {
    Boolean? install_tool_dependencies
    Boolean? install_repository_dependencies
    Boolean? install_resolver_dependencies
    Int? timeout
    Boolean? no_wait
    String fast_qc
    String complete_dot
  }
  command <<<
    nebulizer update_tool \
      ~{fast_qc} \
      ~{complete_dot} \
      ~{if (install_tool_dependencies) then "--install-tool-dependencies" else ""} \
      ~{if (install_repository_dependencies) then "--install-repository-dependencies" else ""} \
      ~{if (install_resolver_dependencies) then "--install-resolver-dependencies" else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{if (no_wait) then "--no-wait" else ""}
  >>>
  parameter_meta {
    install_tool_dependencies: "[yes|no]\\ninstall tool dependencies via the toolshed,\\nif any are defined (default is 'yes')"
    install_repository_dependencies: "[yes|no]\\ninstall repository dependencies via the\\ntoolshed, if any are defined (default is\\n'yes')"
    install_resolver_dependencies: "[yes|no]\\ninstall dependencies through a resolver that\\nsupports installation (e.g. conda) (default\\nis 'yes')"
    timeout: "wait up to TIMEOUT seconds for tool\\ninstallationsto complete (default is 600)."
    no_wait: "don't wait for lengthy tool installations to"
    fast_qc: "The tool must already be present in GALAXY and a newer changeset revision"
    complete_dot: "--check-toolshed                check installed revisions directly against"
  }
  output {
    File out_stdout = stdout()
  }
}