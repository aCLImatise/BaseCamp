version 1.0

task NebulizerCreateBatchUsers {
  input {
    String? password
    Boolean? check
    String galaxy
    String template
    String start
    String? end
  }
  command <<<
    nebulizer create_batch_users \
      ~{galaxy} \
      ~{template} \
      ~{start} \
      ~{end} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{true="--check" false="" check}
  >>>
  parameter_meta {
    password: "specify password for new user accounts (otherwise program will prompt for password). All accounts will be created with the same password."
    check: "check user details but don't try to create the new account."
    galaxy: ""
    template: ""
    start: ""
    end: ""
  }
}