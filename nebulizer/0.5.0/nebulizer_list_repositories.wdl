version 1.0

task NebulizerListRepositories {
  input {
    String nameName
    String toolshedToolshed
    String ownerOwner
    Boolean updateableUpdateable
  }
  command <<<
    nebulizer list_repositories \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(toolshedToolshed) then ("--toolshed " +  '"' + toolshedToolshed + '"') else ""} \
      ~{if defined(ownerOwner) then ("--owner " +  '"' + ownerOwner + '"') else ""} \
      ~{true="--updateable" false="" updateableUpdateable}
  >>>
}