version 1.0

task NebulizerUpdateToolOPTIONSREPOSITORY {
  input {
    String? galaxyGalaxy
    String? toolshedToolshed
    String? ownerOwner
    String? repositoryRepository
  }
  command <<<
    nebulizer update_tool OPTIONS REPOSITORY \
      ~{galaxyGalaxy} \
      ~{toolshedToolshed} \
      ~{ownerOwner} \
      ~{repositoryRepository}
  >>>
}