version 1.0

task GcloudComputeResetwindowspassword {
  input {
    String? user
    String? zone
    String instance_name
  }
  command <<<
    gcloud compute reset_windows_password \
      ~{instance_name} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(zone) then ("--zone " +  '"' + zone + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    user: "USER specifies the username to get the password for. If omitted, the\\nusername is derived from your authenticated account email address."
    zone: "The zone of the instance to operate on. If not specified, you may be\\nprompted to select a zone. gcloud will attempt to identify the zone by\\nsearching for resources in your project. If the zone cannot be\\ndetermined, you will then be prompted with all Google Cloud Platform\\nzones.\\nTo avoid prompting when this flag is omitted, you can set the\\ncompute/zone property:\\n$ gcloud config set compute/zone ZONE\\nA list of zones can be fetched by running:\\n$ gcloud compute zones list\\nTo unset the property, run:\\n$ gcloud config unset compute/zone\\nAlternatively, the zone can be stored in the environment variable\\nCLOUDSDK_COMPUTE_ZONE."
    instance_name: "The name of the instance to operate on."
  }
  output {
    File out_stdout = stdout()
  }
}