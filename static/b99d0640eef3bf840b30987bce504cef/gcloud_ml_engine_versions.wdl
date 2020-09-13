version 1.0

task GcloudMlengineVersions {
  input {
    String create
    String delete
    String describe
    String list
    String set_default
  }
  command <<<
    gcloud ml_engine versions \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{list} \
      ~{set_default}
  >>>
  parameter_meta {
    create: "Create a new Cloud ML Engine version."
    delete: "Delete an existing Cloud ML Engine version."
    describe: "Describe an existing Cloud ML Engine version."
    list: "List existing Cloud ML Engine versions."
    set_default: "Sets an existing Cloud ML Engine version as the default for its model."
  }
  output {
    File out_stdout = stdout()
  }
}