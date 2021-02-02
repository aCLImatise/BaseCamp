version 1.0

task NebulizerCreateUsersFromFileAccount {
  input {
    String nebulizer
    String create_users_from_file
    String galaxy
    File file
  }
  command <<<
    nebulizer create_users_from_file account_ \
      ~{nebulizer} \
      ~{create_users_from_file} \
      ~{galaxy} \
      ~{file}
  >>>
  parameter_meta {
    nebulizer: ""
    create_users_from_file: ""
    galaxy: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}