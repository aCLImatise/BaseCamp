version 1.0

task NebulizerCreateUserPUBLICNAMEOPTIONS {
  input {
    String passwordPassword
    Boolean checkCheck
    File messageMessage
  }
  command <<<
    nebulizer create_user PUBLIC_NAME OPTIONS \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{true="--check" false="" checkCheck} \
      ~{if defined(messageMessage) then ("--message " +  '"' + messageMessage + '"') else ""}
  >>>
}