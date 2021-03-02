version 1.0

task GcloudComputeMachinetypes {
  input {
    String types
    String describe
    String list
  }
  command <<<
    gcloud compute machine_types \
      ~{types} \
      ~{describe} \
      ~{list}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    types: "SYNOPSIS"
    describe: "Describe a Google Compute Engine machine type."
    list: "List Google Compute Engine machine types."
  }
  output {
    File out_stdout = stdout()
  }
}