version 1.0

task NebulizerListToolPanelOPTIONS {
  input {
    String nameName
    Boolean listListTools
  }
  command <<<
    nebulizer list_tool_panel OPTIONS \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{true="--list-tools" false="" listListTools}
  >>>
}