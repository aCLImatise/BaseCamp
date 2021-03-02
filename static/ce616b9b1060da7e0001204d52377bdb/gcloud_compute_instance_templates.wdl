version 1.0

task GcloudComputeInstancetemplates {
  input {
    String create
    String delete
    String describe
    String list
  }
  command <<<
    gcloud compute instance_templates \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{list}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    create: "Create a Compute Engine virtual machine instance template."
    delete: "Delete Google Compute Engine virtual machine instance templates."
    describe: "Describe a virtual machine instance template."
    list: "List Google Compute Engine instance templates."
  }
  output {
    File out_stdout = stdout()
  }
}