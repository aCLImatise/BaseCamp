version 1.0

task GcloudSqlSslcerts {
  input {
    String certificates_dot
    String create
    String delete
    String describe
    String list
  }
  command <<<
    gcloud sql ssl_certs \
      ~{certificates_dot} \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{list}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    certificates_dot: "GCLOUD WIDE FLAGS"
    create: "Creates an SSL certificate for a Cloud SQL instance."
    delete: "Deletes an SSL certificate for a Cloud SQL instance."
    describe: "Retrieves information about an SSL cert for a Cloud SQL instance."
    list: "Lists all SSL certs for a Cloud SQL instance."
  }
  output {
    File out_stdout = stdout()
  }
}