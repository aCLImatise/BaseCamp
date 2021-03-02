version 1.0

task NebulizerInstallTool {
  input {
    String? tool_panel_section
    Boolean? install_tool_dependencies
    Boolean? install_repository_dependencies
    Boolean? install_resolver_dependencies
    Int? timeout
    Boolean? no_wait
    String assumed_dot
    String complete_dot
  }
  command <<<
    nebulizer install_tool \
      ~{assumed_dot} \
      ~{complete_dot} \
      ~{if defined(tool_panel_section) then ("--tool-panel-section " +  '"' + tool_panel_section + '"') else ""} \
      ~{if (install_tool_dependencies) then "--install-tool-dependencies" else ""} \
      ~{if (install_repository_dependencies) then "--install-repository-dependencies" else ""} \
      ~{if (install_resolver_dependencies) then "--install-resolver-dependencies" else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{if (no_wait) then "--no-wait" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tool_panel_section: "tool panel section name or id to install the\\ntool under; if the section doesn't exist\\nthen it will be created. If this option is\\nomitted then the tool will be installed at\\nthe top-level i.e. not in any section."
    install_tool_dependencies: "[yes|no]\\ninstall tool dependencies via the toolshed,\\nif any are defined (default is 'yes')"
    install_repository_dependencies: "[yes|no]\\ninstall repository dependencies via the\\ntoolshed, if any are defined (default is\\n'yes')"
    install_resolver_dependencies: "[yes|no]\\ninstall dependencies through a resolver that\\nsupports installation (e.g. conda) (default\\nis 'yes')"
    timeout: "wait up to TIMEOUT seconds for tool\\ninstallationsto complete (default is 600)."
    no_wait: "don't wait for lengthy tool installations to"
    assumed_dot: "Installation will fail if the specified revision is not installable, or if"
    complete_dot: "--help                          Show this message and exit."
  }
  output {
    File out_stdout = stdout()
  }
}