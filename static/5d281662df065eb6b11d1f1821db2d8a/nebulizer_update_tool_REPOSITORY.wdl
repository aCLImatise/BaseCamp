version 1.0

task NebulizerUpdateToolREPOSITORY {
  input {
    String? optionsOptions
    String? galaxyGalaxy
    String? toolshedToolshed
    String? ownerOwner
    String? repositoryRepository
  }
  command <<<
    nebulizer update_tool REPOSITORY \
      ~{optionsOptions} \
      ~{galaxyGalaxy} \
      ~{toolshedToolshed} \
      ~{ownerOwner} \
      ~{repositoryRepository}
  >>>
}