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
      ~{if (list_tools) then "--list-tools" else ""}
  >>>
  parameter_meta {
    name: "only list tool panel sections where name or id match NAME. Can\\ninclude glob-style wild-cards."
    list_tools: "also list the associated tools for each section"
    galaxy: ""
  }
  output {
    File out_stdout = stdout()
  }
}