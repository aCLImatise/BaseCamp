version 1.0

task HcaDssUpload {
  input {
    String? staging_bucket
    File? src_dir
    String? replica
  }
  command <<<
    hca dss upload \
      ~{if defined(staging_bucket) then ("--staging-bucket " +  '"' + staging_bucket + '"') else ""} \
      ~{if defined(src_dir) then ("--src-dir " +  '"' + src_dir + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""}
  >>>
  parameter_meta {
    staging_bucket: "[--timeout-seconds TIMEOUT_SECONDS] [--no-progress]\\n[--bundle-uuid BUNDLE_UUID]"
    src_dir: "file path to a directory of files to upload to the replica.\\n--replica REPLICA     the replica to upload to. The supported replicas are: aws for Amazon Web Services, and\\ngcp for Google Cloud Platform. [aws, gcp]\\n--staging-bucket STAGING_BUCKET\\na client controlled AWS S3 storage bucket to upload from.\\n--timeout-seconds TIMEOUT_SECONDS\\nthe time to wait for a file to upload to replica.\\n--no-progress         if set, will not report upload progress. Note that even if this flag\\nis not set, progress will not be reported if the logging level is higher\\nthan INFO or if the session is not interactive.\\n--bundle-uuid BUNDLE_UUID\\n"
    replica: ""
  }
  output {
    File out_stdout = stdout()
  }
}