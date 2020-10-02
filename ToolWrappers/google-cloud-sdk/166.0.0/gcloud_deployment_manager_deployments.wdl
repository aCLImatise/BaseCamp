version 1.0

task GcloudDeploymentmanagerDeployments {
  input {
    String? config
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
      ~{update} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""}
  >>>
  parameter_meta {
    config: "To update a deployment, run:\\n$ gcloud deployment-manager deployments update my-deployment \\\\n--config new_config.yaml\\nTo stop a deployment create or update in progress, run:\\n$ gcloud deployment-manager deployments stop my-deployment\\nTo cancel a previewed create or update, run:\\n$ gcloud deployment-manager deployments cancel-preview my-deployment\\nTo delete a deployment, run:\\n$ gcloud deployment-manager deployments delete my-deployment\\nTo view the details of a deployment, run:\\n$ gcloud deployment-manager deployments describe my-deployment\\nTo see the list of all deployments, run:\\n$ gcloud deployment-manager deployments list\\n"
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