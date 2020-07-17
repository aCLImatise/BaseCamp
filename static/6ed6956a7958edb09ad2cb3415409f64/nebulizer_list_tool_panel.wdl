version 1.0

task NebulizerListToolPanel {
  input {
    String? name
    Boolean? list_tools
    String galaxy
  }
  command <<<
    nebulizer list_tool_panel \
      ~{galaxy} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{true="--list-tools" false="" list_tools}
  >>>
  parameter_meta {
    name: "only list tool panel sections where name or id match NAME. Can include glob-style wild-cards."
    list_tools: "also list the associated tools for each section"
    galaxy: ""
  }
}