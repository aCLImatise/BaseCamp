version 1.0

task NebulizerUpdateToolTOOLSHED {
  input {
    String? optionsOptions
    String? galaxyGalaxy
    String? toolshedToolshed
    String? ownerOwner
    String? repositoryRepository
  }
  command <<<
    nebulizer update_tool TOOLSHED \
      ~{optionsOptions} \
      ~{galaxyGalaxy} \
      ~{toolshedToolshed} \
      ~{ownerOwner} \
      ~{repositoryRepository}
  >>>
}