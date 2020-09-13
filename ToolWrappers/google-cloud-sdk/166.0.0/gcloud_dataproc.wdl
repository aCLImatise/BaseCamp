version 1.0

task GcloudDataproc {
  input {
    String? region
    String clusters
    String jobs
    String operations
  }
  command <<<
    gcloud dataproc \
      ~{clusters} \
      ~{jobs} \
      ~{operations} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""}
  >>>
  parameter_meta {
    region: "Specifies the Cloud Dataproc region to use. Each Cloud Dataproc region\\nconstitutes an independent resource namespace constrained to deploying\\ninstances into Google Compute Engine zones inside the region. The\\ndefault value of \\\"global\\\" is a special multi-region namespace which is\\ncapable of deploying instances into all Google Compute Engine zones\\nglobally, and is disjoint from other Cloud Dataproc regions. Overrides\\nthe default dataproc/region property value for this command invocation."
    clusters: "Create and manage Google Cloud Dataproc clusters."
    jobs: "Submit and manage Google Cloud Dataproc jobs."
    operations: "View and manage Google Cloud Dataproc operations."
  }
  output {
    File out_stdout = stdout()
  }
}