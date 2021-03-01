version 1.0

task GcloudSqlDatabases {
  input {
    String instances
    String create
    String delete
    String describe
    String list
    String patch
  }
  command <<<
    gcloud sql databases \
      ~{instances} \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{list} \
      ~{patch}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    instances: "SYNOPSIS"
    create: "Creates a database for a Cloud SQL instance."
    delete: "Deletes a Cloud SQL database."
    describe: "Displays configuration and metadata about a Cloud SQL database."
    list: "Lists databases for a Cloud SQL instance."
    patch: "Patches the settings of a Cloud SQL database."
  }
  output {
    File out_stdout = stdout()
  }
}