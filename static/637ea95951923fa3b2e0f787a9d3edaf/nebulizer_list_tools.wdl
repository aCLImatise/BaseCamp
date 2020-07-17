version 1.0

task NebulizerListTools {
  input {
    String? name
    Boolean? installed
    String galaxy
  }
  command <<<
    nebulizer list_tools \
      ~{galaxy} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{true="--installed" false="" installed}
  >>>
  parameter_meta {
    name: "list only tools matching NAME. Can include glob-style wild- cards."
    installed: "only list tools that have been installed from a toolshed (default is to list all tools)."
    galaxy: ""
  }
}