version 1.0

task NebulizerInstallRepositoriesFILE {
  input {
    String? optionsOptions
    String? galaxyGalaxy
    File? fileFile
  }
  command <<<
    nebulizer install_repositories FILE \
      ~{optionsOptions} \
      ~{galaxyGalaxy} \
      ~{fileFile}
  >>>
}