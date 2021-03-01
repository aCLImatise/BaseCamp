version 1.0

task NebulizerListInstalledTools {
  input {
    String? name
    String? toolshed
    String? owner
    Boolean? list_tools
    Boolean? updateable
    String upgrades_dot
    String slow_dot
  }
  command <<<
    nebulizer list_installed_tools \
      ~{upgrades_dot} \
      ~{slow_dot} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(toolshed) then ("--toolshed " +  '"' + toolshed + '"') else ""} \
      ~{if defined(owner) then ("--owner " +  '"' + owner + '"') else ""} \
      ~{if (list_tools) then "--list-tools" else ""} \
      ~{if (updateable) then "--updateable" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name: "only list tool repositories matching NAME. Can include\\nglob-style wild-cards."
    toolshed: "only list repositories installed from toolshed matching\\nTOOLSHED. Can include glob-style wild-cards."
    owner: "only list repositories from matching OWNER. Can include\\nglob-style wild-cards."
    list_tools: "also list the tools associated with each installed\\nrepository revision changeset."
    updateable: "only show repositories with uninstalled updates or"
    upgrades_dot: "--check-toolshed     check installed revisions directly against those"
    slow_dot: "--help               Show this message and exit."
  }
  output {
    File out_stdout = stdout()
  }
}