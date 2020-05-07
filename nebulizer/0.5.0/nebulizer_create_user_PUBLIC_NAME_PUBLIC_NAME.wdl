version 1.0

task NebulizerCreateUserPUBLICNAMEPUBLICNAME {
  input {
    String passwordPassword
    Boolean checkCheck
    File messageMessage
  }
  command <<<
    nebulizer create_user PUBLIC_NAME PUBLIC_NAME \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{true="--check" false="" checkCheck} \
      ~{if defined(messageMessage) then ("--message " +  '"' + messageMessage + '"') else ""}
  >>>
}