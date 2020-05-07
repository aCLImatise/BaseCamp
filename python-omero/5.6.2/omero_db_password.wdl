version 1.0

task OmeroDbPassword {
  input {
    Boolean emptyEmpty
    String userUserId
    Boolean noNoSalt
  }
  command <<<
    omero db password \
      ~{true="--empty" false="" emptyEmpty} \
      ~{if defined(userUserId) then ("--user-id " +  '"' + userUserId + '"') else ""} \
      ~{true="--no-salt" false="" noNoSalt}
  >>>
}