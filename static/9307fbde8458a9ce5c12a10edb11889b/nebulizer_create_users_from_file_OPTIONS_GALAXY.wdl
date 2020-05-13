version 1.0

task NebulizerCreateUsersFromFileOPTIONSGALAXY {
  input {
    Boolean checkCheck
    File messageMessage
  }
  command <<<
    nebulizer create_users_from_file OPTIONS GALAXY \
      ~{true="--check" false="" checkCheck} \
      ~{if defined(messageMessage) then ("--message " +  '"' + messageMessage + '"') else ""}
  >>>
}