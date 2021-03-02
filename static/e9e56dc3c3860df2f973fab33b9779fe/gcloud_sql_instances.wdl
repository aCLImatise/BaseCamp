version 1.0

task GcloudSqlInstances {
  input {
    String clone
    String create
    String delete
    String describe
    String export
    String failover
    String imports_data_cloud
    String list
    String patch
    String promote_replica
    String reset_ssl_config
    String restart
    String restore_backup
    String set_root_password
  }
  command <<<
    gcloud sql instances \
      ~{clone} \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{export} \
      ~{failover} \
      ~{imports_data_cloud} \
      ~{list} \
      ~{patch} \
      ~{promote_replica} \
      ~{reset_ssl_config} \
      ~{restart} \
      ~{restore_backup} \
      ~{set_root_password}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    clone: "Clones a Cloud SQL instance."
    create: "Creates a new Cloud SQL instance."
    delete: "Deletes a Cloud SQL instance."
    describe: "Displays configuration and metadata about a Cloud SQL instance."
    export: "Exports data from a Cloud SQL instance."
    failover: "Causes a high-availability Cloud SQL instance to failover."
    imports_data_cloud: "Imports data into a Cloud SQL instance from Google Cloud Storage."
    list: "Lists Cloud SQL instances in a given project."
    patch: "Updates the settings of a Cloud SQL instance."
    promote_replica: "Promotes Cloud SQL read replica to a stand-alone instance."
    reset_ssl_config: "Deletes all client certificates and generates a new server certificate."
    restart: "Restarts a Cloud SQL instance."
    restore_backup: "Restores a backup of a Cloud SQL instance."
    set_root_password: "(DEPRECATED) Sets the password of the MySQL root user."
  }
  output {
    File out_stdout = stdout()
  }
}