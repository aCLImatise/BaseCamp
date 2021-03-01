version 1.0

task GcloudSpannerDatabases {
  input {
    String ddl
    String add_i_am_policy_binding
    String create
    String delete
    String describe
    String execute_sql
    String get_i_am_policy
    String list
    String remove_i_am_policy_binding
    String set_i_am_policy
  }
  command <<<
    gcloud spanner databases \
      ~{ddl} \
      ~{add_i_am_policy_binding} \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{execute_sql} \
      ~{get_i_am_policy} \
      ~{list} \
      ~{remove_i_am_policy_binding} \
      ~{set_i_am_policy}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ddl: "Manage the DDL for Cloud Spanner databases."
    add_i_am_policy_binding: "Add an IAM policy binding to a Cloud Spanner database."
    create: "Create a Cloud Spanner database."
    delete: "Delete a Cloud Spanner database."
    describe: "Describe a Cloud Spanner database."
    execute_sql: "Executes a read-only SQL query against a Cloud Spanner database."
    get_i_am_policy: "Get the IAM policy for a Cloud Spanner database."
    list: "List the Cloud Spanner databases contained within the given instance."
    remove_i_am_policy_binding: "Remove an IAM policy binding from a Cloud Spanner database."
    set_i_am_policy: "Set the IAM policy for a Cloud Spanner database."
  }
  output {
    File out_stdout = stdout()
  }
}