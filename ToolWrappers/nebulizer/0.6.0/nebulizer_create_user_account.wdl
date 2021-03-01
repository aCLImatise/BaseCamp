version 1.0

task NebulizerCreateUserAccount {
  input {
    String nebulizer
    String create_user
    String galaxy
    String email
    String? public_name
  }
  command <<<
    nebulizer create_user account \
      ~{nebulizer} \
      ~{create_user} \
      ~{galaxy} \
      ~{email} \
      ~{public_name}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    nebulizer: ""
    create_user: ""
    galaxy: ""
    email: ""
    public_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}