version 1.0

task NebulizerListToolPanelGALAXY {
  input {
    String nameName
    Boolean listListTools
  }
  command <<<
    nebulizer list_tool_panel GALAXY \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{true="--list-tools" false="" listListTools}
  >>>
}