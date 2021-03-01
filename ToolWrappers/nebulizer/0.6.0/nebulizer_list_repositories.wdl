version 1.0

task NebulizerListRepositories {
  input {
    String? name
    String? toolshed
    String? owner
    Boolean? updateable
    String upgrades_dot
  }
  command <<<
    nebulizer list_repositories \
      ~{upgrades_dot} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(toolshed) then ("--toolshed " +  '"' + toolshed + '"') else ""} \
      ~{if defined(owner) then ("--owner " +  '"' + owner + '"') else ""} \
      ~{if (updateable) then "--updateable" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name: "only list tool repositories matching NAME. Can include\\nglob-style wild-cards."
    toolshed: "only list repositories installed from toolshed matching\\nTOOLSHED. Can include glob-style wild-cards."
    owner: "only list repositories from matching OWNER. Can include\\nglob-style wild-cards."
    updateable: "only show repositories with uninstalled updates or"
    upgrades_dot: "--help               Show this message and exit."
  }
  output {
    File out_stdout = stdout()
  }
}