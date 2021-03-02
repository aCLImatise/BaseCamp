version 1.0

task GcloudDnsManagedzones {
  input {
    String create
    String delete
    String describe
    String list
  }
  command <<<
    gcloud dns managed_zones \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{list}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    create: "Create a Cloud DNS managed-zone."
    delete: "Delete an empty Cloud DNS managed-zone."
    describe: "View the details of a Cloud DNS managed-zone."
    list: "View the list of all your managed-zones."
  }
  output {
    File out_stdout = stdout()
  }
}