version 1.0

task GcloudDeploymentmanagerDeployments {
  input {
    String deployments
    String cancel_preview
    String create
    String delete
    String describe
    String list
    String stop
    String update
  }
  command <<<
    gcloud deployment_manager deployments \
      ~{deployments} \
      ~{cancel_preview} \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{list} \
      ~{stop} \
      ~{update}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    deployments: "SYNOPSIS"
    cancel_preview: "Cancel a pending or running deployment preview."
    create: "Create a deployment."
    delete: "Delete a deployment."
    describe: "Provide information about a deployment."
    list: "List deployments in a project."
    stop: "Stop a pending or running deployment update or creation."
    update: "Update a deployment based on a provided config file."
  }
  output {
    File out_stdout = stdout()
  }
}