version 1.0

task GcloudDeploymentmanagerResources {
  input {
    String? deployment
    String resources
    String describe
    String list
  }
  command <<<
    gcloud deployment_manager resources \
      ~{resources} \
      ~{describe} \
      ~{list} \
      ~{if defined(deployment) then ("--deployment " +  '"' + deployment + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    deployment: "Deployment name"
    resources: "SYNOPSIS"
    describe: "Provide information about a resource."
    list: "List resources in a deployment."
  }
  output {
    File out_stdout = stdout()
  }
}