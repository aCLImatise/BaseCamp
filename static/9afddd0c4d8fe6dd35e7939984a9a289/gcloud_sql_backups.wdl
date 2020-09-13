version 1.0

task GcloudSqlBackups {
  input {
    String instances
    String create
    String delete
    String describe
    String list
    String restore
  }
  command <<<
    gcloud sql backups \
      ~{instances} \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{list} \
      ~{restore}
  >>>
  parameter_meta {
    instances: "SYNOPSIS"
    create: "Creates a backup of a Cloud SQL instance."
    delete: "Delete a backup of a Cloud SQL instance."
    describe: "Retrieves information about a backup."
    list: "Lists all backups associated with a given instance."
    restore: "Restores a backup of a Cloud SQL instance."
  }
  output {
    File out_stdout = stdout()
  }
}