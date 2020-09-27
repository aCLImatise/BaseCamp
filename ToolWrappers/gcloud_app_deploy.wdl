version 1.0

task GcloudAppDeploy {
  input {
    String? bucket
    String? image_url
    Boolean? promote
    Boolean? stop_previous_version
  }
  command <<<
    gcloud app deploy \
      ~{if defined(bucket) then ("--bucket " +  '"' + bucket + '"') else ""} \
      ~{if defined(image_url) then ("--image-url " +  '"' + image_url + '"') else ""} \
      ~{if (promote) then "--promote" else ""} \
      ~{if (stop_previous_version) then "--stop-previous-version" else ""}
  >>>
  parameter_meta {
    bucket: "The Google Cloud Storage bucket used to stage files associated with the\\ndeployment. If this argument is not specified, the application's\\ndefault code bucket is used."
    image_url: "Deploy with a specific Docker image. Docker url must be from one of the\\nvalid gcr hostnames."
    promote: "Promote the deployed version to receive all traffic.\\nTrue by default. To change the default behavior for your current\\nenvironment, run:\\n$ gcloud config set app/promote_by_default false"
    stop_previous_version: "Stop the previously running version when deploying a new version that\\nreceives all traffic. Overrides the default app/stop_previous_version\\nproperty value for this command invocation. Use\\n--no-stop-previous-version to disable."
  }
  output {
    File out_stdout = stdout()
  }
}