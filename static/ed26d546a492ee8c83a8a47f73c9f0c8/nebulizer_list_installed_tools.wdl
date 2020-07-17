version 1.0

task NebulizerListInstalledTools {
  input {
    String? name
    String? toolshed
    String? owner
    Boolean? list_tools
    Boolean? updateable
    Boolean? check_toolshed
    String galaxy
  }
  command <<<
    nebulizer list_installed_tools \
      ~{galaxy} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(toolshed) then ("--toolshed " +  '"' + toolshed + '"') else ""} \
      ~{if defined(owner) then ("--owner " +  '"' + owner + '"') else ""} \
      ~{true="--list-tools" false="" list_tools} \
      ~{true="--updateable" false="" updateable} \
      ~{true="--check-toolshed" false="" check_toolshed}
  >>>
  parameter_meta {
    name: "only list tool repositories matching NAME. Can include glob-style wild-cards."
    toolshed: "only list repositories installed from toolshed matching TOOLSHED. Can include glob-style wild-cards."
    owner: "only list repositories from matching OWNER. Can include glob-style wild-cards."
    list_tools: "also list the tools associated with each installed repository revision changeset."
    updateable: "only show repositories with uninstalled updates or upgrades."
    check_toolshed: "check installed revisions directly against those available in the toolshed. NB this can be extremely slow."
    galaxy: ""
  }
}