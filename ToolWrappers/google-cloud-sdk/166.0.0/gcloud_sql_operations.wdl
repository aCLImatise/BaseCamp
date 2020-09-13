version 1.0

task GcloudSqlOperations {
  input {
    String instance_dot
    String describe
    String list
    String wait
  }
  command <<<
    gcloud sql operations \
      ~{instance_dot} \
      ~{describe} \
      ~{list} \
      ~{wait}
  >>>
  parameter_meta {
    instance_dot: "GCLOUD WIDE FLAGS"
    describe: "Retrieves information about a Cloud SQL instance operation."
    list: "Lists all instance operations for the given Cloud SQL instance."
    wait: "Waits for one or more operations to complete."
  }
  output {
    File out_stdout = stdout()
  }
}