version 1.0

task NebulizerInstallRepositoriesGALAXY {
  input {
    String? optionsOptions
    String? galaxyGalaxy
    File? fileFile
  }
  command <<<
    nebulizer install_repositories GALAXY \
      ~{optionsOptions} \
      ~{galaxyGalaxy} \
      ~{fileFile}
  >>>
}