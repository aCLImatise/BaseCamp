version 1.0

task GcloudSqlUsers {
  input {
    String create
    String delete
    String list
    String set_password
  }
  command <<<
    gcloud sql users \
      ~{create} \
      ~{delete} \
      ~{list} \
      ~{set_password}
  >>>
  parameter_meta {
    create: "Creates a user in a given instance."
    delete: "Deletes a Cloud SQL user in a given instance."
    list: "Lists Cloud SQL users in a given instance."
    set_password: "Changes a user's password in a given instance."
  }
  output {
    File out_stdout = stdout()
  }
}