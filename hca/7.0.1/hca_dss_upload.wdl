version 1.0

task HcaDssUpload {
  input {
    String? staging_bucket
    File? src_dir
    String? replica
    File? timeout_seconds
    Boolean? no_progress
    String? bundle_uuid
  }
  command <<<
    hca dss upload \
      ~{if defined(staging_bucket) then ("--staging-bucket " +  '"' + staging_bucket + '"') else ""} \
      ~{if defined(src_dir) then ("--src-dir " +  '"' + src_dir + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""} \
      ~{if defined(timeout_seconds) then ("--timeout-seconds " +  '"' + timeout_seconds + '"') else ""} \
      ~{if (no_progress) then "--no-progress" else ""} \
      ~{if defined(bundle_uuid) then ("--bundle-uuid " +  '"' + bundle_uuid + '"') else ""}
  >>>
  parameter_meta {
    staging_bucket: ""
    src_dir: "file path to a directory of files to upload to the replica."
    replica: "the replica to upload to. The supported replicas are: aws for Amazon Web Services, and\\ngcp for Google Cloud Platform. [aws, gcp]"
    timeout_seconds: "the time to wait for a file to upload to replica."
    no_progress: "if set, will not report upload progress. Note that even if this flag\\nis not set, progress will not be reported if the logging level is higher\\nthan INFO or if the session is not interactive."
    bundle_uuid: ""
  }
  output {
    File out_stdout = stdout()
  }
}