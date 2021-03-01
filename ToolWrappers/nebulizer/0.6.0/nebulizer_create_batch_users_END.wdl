version 1.0

task NebulizerCreateBatchUsersEND {
  input {
    String nebulizer
    String create_batch_users
    String galaxy
    String template
    String start
    String? end
  }
  command <<<
    nebulizer create_batch_users END \
      ~{nebulizer} \
      ~{create_batch_users} \
      ~{galaxy} \
      ~{template} \
      ~{start} \
      ~{end}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    nebulizer: ""
    create_batch_users: ""
    galaxy: ""
    template: ""
    start: ""
    end: ""
  }
  output {
    File out_stdout = stdout()
  }
}