version 1.0

task NebulizerCreateUsersFromFileOPTIONSFILE {
  input {
    String? galaxyGalaxy
    File? fileFile
  }
  command <<<
    nebulizer create_users_from_file OPTIONS FILE \
      ~{galaxyGalaxy} \
      ~{fileFile}
  >>>
}