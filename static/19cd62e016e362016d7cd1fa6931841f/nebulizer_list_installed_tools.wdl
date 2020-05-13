version 1.0

task NebulizerListInstalledTools {
  input {
    String nameName
    String toolshedToolshed
    String ownerOwner
    Boolean listListTools
    Boolean updateableUpdateable
    Boolean checkCheckToolshed
  }
  command <<<
    nebulizer list_installed_tools \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(toolshedToolshed) then ("--toolshed " +  '"' + toolshedToolshed + '"') else ""} \
      ~{if defined(ownerOwner) then ("--owner " +  '"' + ownerOwner + '"') else ""} \
      ~{true="--list-tools" false="" listListTools} \
      ~{true="--updateable" false="" updateableUpdateable} \
      ~{true="--check-toolshed" false="" checkCheckToolshed}
  >>>
}