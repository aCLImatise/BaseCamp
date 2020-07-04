version 1.0

task NebulizerCreateUser {
  input {
    String? password
    Boolean? check
    File? message
    String galaxy
    String email
    String? public_name
  }
  command <<<
    nebulizer create_user \
      ~{galaxy} \
      ~{email} \
      ~{public_name} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{true="--check" false="" check} \
      ~{if defined(message) then ("--message " +  '"' + message + '"') else ""}
  >>>
  parameter_meta {
    password: "specify password for new user account (otherwise program will prompt for password)"
    check: "check user details but don't try to create the new account"
    message: "Mako template to populate and output"
    galaxy: ""
    email: ""
    public_name: ""
  }
}