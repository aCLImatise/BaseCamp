version 1.0

task GcloudComputeAcceleratortypes {
  input {
    String types
    String describe
    String list
  }
  command <<<
    gcloud compute accelerator_types \
      ~{types} \
      ~{describe} \
      ~{list}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    types: "SYNOPSIS"
    describe: "Describe Google Compute Engine accelerator types."
    list: "List Google Compute Engine accelerator types."
  }
  output {
    File out_stdout = stdout()
  }
}