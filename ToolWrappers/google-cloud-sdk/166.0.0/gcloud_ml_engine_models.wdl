version 1.0

task GcloudMlengineModels {
  input {
    String add_i_am_policy_binding
    String create
    String delete
    String describe
    String get_i_am_policy
    String list
    String remove_i_am_policy_binding
    String set_i_am_policy
  }
  command <<<
    gcloud ml_engine models \
      ~{add_i_am_policy_binding} \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{get_i_am_policy} \
      ~{list} \
      ~{remove_i_am_policy_binding} \
      ~{set_i_am_policy}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    add_i_am_policy_binding: "Add IAM policy binding to a model."
    create: "Create a new Cloud ML Engine model."
    delete: "Delete an existing Cloud ML Engine model."
    describe: "Describe an existing Cloud ML Engine model."
    get_i_am_policy: "Get the IAM policy for a model."
    list: "List existing Cloud ML Engine models."
    remove_i_am_policy_binding: "Remove a policy binding from a model."
    set_i_am_policy: "Set the IAM policy for a model."
  }
  output {
    File out_stdout = stdout()
  }
}