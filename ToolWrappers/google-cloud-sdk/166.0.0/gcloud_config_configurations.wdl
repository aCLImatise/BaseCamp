version 1.0

task GcloudConfigConfigurations {
  input {
    String configurations
    String activate
    String create
    String delete
    String describe
    String list
  }
  command <<<
    gcloud config configurations \
      ~{configurations} \
      ~{activate} \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{list}
  >>>
  parameter_meta {
    configurations: "SYNOPSIS"
    activate: "Activates an existing named configuration."
    create: "Creates a new named configuration."
    delete: "Deletes a named configuration."
    describe: "Describes a named configuration by listing its properties."
    list: "Lists existing named configurations."
  }
  output {
    File out_stdout = stdout()
  }
}