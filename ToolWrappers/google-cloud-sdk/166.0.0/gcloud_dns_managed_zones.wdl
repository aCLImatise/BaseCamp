version 1.0

task GcloudDnsManagedzones {
  input {
    Boolean? dns_name
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
      ~{list} \
      ~{if (dns_name) then "--dns-name" else ""}
  >>>
  parameter_meta {
    dns_name: "=\\\"my.zone.com.\\\""
    create: "Create a Cloud DNS managed-zone."
    delete: "Delete an empty Cloud DNS managed-zone."
    describe: "View the details of a Cloud DNS managed-zone."
    list: "View the list of all your managed-zones."
  }
  output {
    File out_stdout = stdout()
  }
}