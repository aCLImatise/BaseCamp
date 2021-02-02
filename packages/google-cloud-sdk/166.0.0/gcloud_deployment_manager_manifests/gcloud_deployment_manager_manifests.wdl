version 1.0

task GcloudDeploymentmanagerManifests {
  input {
    String? deployment
    String manifests
    String describe
    String list
  }
  command <<<
    gcloud deployment_manager manifests \
      ~{manifests} \
      ~{describe} \
      ~{list} \
      ~{if defined(deployment) then ("--deployment " +  '"' + deployment + '"') else ""}
  >>>
  parameter_meta {
    deployment: "To see the list of all manifests in a deployment, run:\\n$ gcloud deployment-manager manifests list --deployment my-deployment\\n"
    manifests: "SYNOPSIS"
    describe: "Provide information about a manifest."
    list: "List manifests in a deployment."
  }
  output {
    File out_stdout = stdout()
  }
}