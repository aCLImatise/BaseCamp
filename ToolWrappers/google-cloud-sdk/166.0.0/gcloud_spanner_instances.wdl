version 1.0

task GcloudSpannerInstances {
  input {
    String add_i_am_policy_binding
    String create
    String delete
    String describe
    String get_i_am_policy
    String list
    String remove_i_am_policy_binding
    String set_i_am_policy
    String update
  }
  command <<<
    gcloud spanner instances \
      ~{add_i_am_policy_binding} \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{get_i_am_policy} \
      ~{list} \
      ~{remove_i_am_policy_binding} \
      ~{set_i_am_policy} \
      ~{update}
  >>>
  parameter_meta {
    add_i_am_policy_binding: "Add an IAM policy binding to a Cloud Spanner instance."
    create: "Create a Cloud Spanner instance."
    delete: "Delete a Cloud Spanner instance."
    describe: "Describe a Cloud Spanner instance."
    get_i_am_policy: "Get the IAM policy for a Cloud Spanner instance."
    list: "List the Cloud Spanner instances in this project."
    remove_i_am_policy_binding: "Remove an IAM policy binding from a Cloud Spanner instance."
    set_i_am_policy: "Set the IAM policy for a Cloud Spanner instance."
    update: "Update a Cloud Spanner instance."
  }
  output {
    File out_stdout = stdout()
  }
}