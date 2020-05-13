version 1.0

task NebulizerCreateUsersFromFileFILE {
  input {
    String? optionsOptions
    String? galaxyGalaxy
    File? fileFile
  }
  command <<<
    nebulizer create_users_from_file FILE \
      ~{optionsOptions} \
      ~{galaxyGalaxy} \
      ~{fileFile}
  >>>
}