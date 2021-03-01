version 1.0

task GcloudAppInstances {
  input {
    String delete
    String describe
    String disable_debug
    String enable_debug
    String list
    String scp
    String ssh
  }
  command <<<
    gcloud app instances \
      ~{delete} \
      ~{describe} \
      ~{disable_debug} \
      ~{enable_debug} \
      ~{list} \
      ~{scp} \
      ~{ssh}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    delete: "Delete a specified instance."
    describe: "Display all data about an existing instance."
    disable_debug: "Disables debug mode for an instance."
    enable_debug: "Enables debug mode for an instance."
    list: "List the instances affiliated with the current App Engine project."
    scp: "SCP from or to the VM of an App Engine Flexible instance."
    ssh: "SSH into the VM of an App Engine Flexible instance."
  }
  output {
    File out_stdout = stdout()
  }
}