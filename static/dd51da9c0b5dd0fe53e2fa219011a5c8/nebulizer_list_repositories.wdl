version 1.0

task NebulizerListRepositories {
  input {
    String? name
    String? toolshed
    String? owner
    Boolean? updateable
    String galaxy
  }
  command <<<
    nebulizer list_repositories \
      ~{galaxy} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(toolshed) then ("--toolshed " +  '"' + toolshed + '"') else ""} \
      ~{if defined(owner) then ("--owner " +  '"' + owner + '"') else ""} \
      ~{true="--updateable" false="" updateable}
  >>>
  parameter_meta {
    name: "only list tool repositories matching NAME. Can include glob-style wild-cards."
    toolshed: "only list repositories installed from toolshed matching TOOLSHED. Can include glob-style wild-cards."
    owner: "only list repositories from matching OWNER. Can include glob-style wild-cards."
    updateable: "only show repositories with uninstalled updates or upgrades."
    galaxy: ""
  }
}