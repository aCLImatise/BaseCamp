version 1.0

task GcloudServicemanagementConfigs {
  input {
    String services
    String describe
    String list
  }
  command <<<
    gcloud service_management configs \
      ~{services} \
      ~{describe} \
      ~{list}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    services: "SYNOPSIS"
    describe: "Describes the configuration for a given version of a service."
    list: "Lists the configurations for a given service."
  }
  output {
    File out_stdout = stdout()
  }
}