version 1.0

task OmeroDbPassword {
  input {
    Boolean? empty
    String? user_id
    Boolean? no_salt
  }
  command <<<
    omero db password \
      ~{true="--empty" false="" empty} \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""} \
      ~{true="--no-salt" false="" no_salt}
  >>>
  parameter_meta {
    empty: "Remove the password, allowing any for login when guest."
    user_id: "User ID to salt into the password. Defaults to '0', i.e. 'root'"
    no_salt: "Disable the salting of passwords"
  }
}