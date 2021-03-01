version 1.0

task NebulizerCreateUsersFromFileAccount {
  input {
    String nebulizer
    String create_users_from_file
    String galaxy
    File var_file
  }
  command <<<
    nebulizer create_users_from_file account_ \
      ~{nebulizer} \
      ~{create_users_from_file} \
      ~{galaxy} \
      ~{var_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    nebulizer: ""
    create_users_from_file: ""
    galaxy: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}