version 1.0

task NebulizerUpdateToolOPTIONSOWNER {
  input {
    String? galaxyGalaxy
    String? toolshedToolshed
    String? ownerOwner
    String? repositoryRepository
  }
  command <<<
    nebulizer update_tool OPTIONS OWNER \
      ~{galaxyGalaxy} \
      ~{toolshedToolshed} \
      ~{ownerOwner} \
      ~{repositoryRepository}
  >>>
}