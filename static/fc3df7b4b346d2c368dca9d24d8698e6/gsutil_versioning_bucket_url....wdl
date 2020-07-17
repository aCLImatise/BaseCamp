version 1.0

task GsutilVersioningBucketUrl... {
  input {
    String gs_util
    String versioning
    String set
    String? on_vertical_line_off
    String bucket_url_dot_dot_dot
  }
  command <<<
    gsutil versioning bucket_url... \
      ~{gs_util} \
      ~{versioning} \
      ~{set} \
      ~{on_vertical_line_off} \
      ~{bucket_url_dot_dot_dot}
  >>>
  parameter_meta {
    gs_util: ""
    versioning: ""
    set: ""
    on_vertical_line_off: ""
    bucket_url_dot_dot_dot: ""
  }
}