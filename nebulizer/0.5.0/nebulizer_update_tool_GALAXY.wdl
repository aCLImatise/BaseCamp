version 1.0

task NebulizerUpdateToolGALAXY {
  input {
    String? optionsOptions
    String? galaxyGalaxy
    String? toolshedToolshed
    String? ownerOwner
    String? repositoryRepository
  }
  command <<<
    nebulizer update_tool GALAXY \
      ~{optionsOptions} \
      ~{galaxyGalaxy} \
      ~{toolshedToolshed} \
      ~{ownerOwner} \
      ~{repositoryRepository}
  >>>
}