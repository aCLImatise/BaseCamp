version 1.0

task NebulizerCreateUsersFromFileGALAXY {
  input {
    String? optionsOptions
    String? galaxyGalaxy
    File? fileFile
  }
  command <<<
    nebulizer create_users_from_file GALAXY \
      ~{optionsOptions} \
      ~{galaxyGalaxy} \
      ~{fileFile}
  >>>
}