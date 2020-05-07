version 1.0

task NebulizerCreateUserOPTIONSGALAXY {
  input {
    String passwordPassword
    Boolean checkCheck
    File messageMessage
  }
  command <<<
    nebulizer create_user OPTIONS GALAXY \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{true="--check" false="" checkCheck} \
      ~{if defined(messageMessage) then ("--message " +  '"' + messageMessage + '"') else ""}
  >>>
}