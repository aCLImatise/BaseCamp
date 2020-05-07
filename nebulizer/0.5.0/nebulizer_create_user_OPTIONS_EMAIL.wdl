version 1.0

task NebulizerCreateUserOPTIONSEMAIL {
  input {
    String passwordPassword
    Boolean checkCheck
    File messageMessage
  }
  command <<<
    nebulizer create_user OPTIONS EMAIL \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{true="--check" false="" checkCheck} \
      ~{if defined(messageMessage) then ("--message " +  '"' + messageMessage + '"') else ""}
  >>>
}