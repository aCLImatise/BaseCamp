version 1.0

task NebulizerUpdateToolOPTIONSTOOLSHED {
  input {
    String? galaxyGalaxy
    String? toolshedToolshed
    String? ownerOwner
    String? repositoryRepository
  }
  command <<<
    nebulizer update_tool OPTIONS TOOLSHED \
      ~{galaxyGalaxy} \
      ~{toolshedToolshed} \
      ~{ownerOwner} \
      ~{repositoryRepository}
  >>>
}