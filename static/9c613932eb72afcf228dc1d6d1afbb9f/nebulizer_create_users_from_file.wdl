version 1.0

task NebulizerCreateUsersFromFile {
  input {
    Boolean? check
    File? message
    String galaxy
    File file
  }
  command <<<
    nebulizer create_users_from_file \
      ~{galaxy} \
      ~{file} \
      ~{true="--check" false="" check} \
      ~{if defined(message) then ("--message " +  '"' + message + '"') else ""}
  >>>
  parameter_meta {
    check: "check user details but don't try to create the new account."
    message: "Mako template to populate and output."
    galaxy: ""
    file: ""
  }
}