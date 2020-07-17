version 1.0

task GsutilVersioningSet {
  input {
    String? on_vertical_line_off
    String bucket_url_dot_dot_dot
  }
  command <<<
    gsutil versioning set \
      ~{on_vertical_line_off} \
      ~{bucket_url_dot_dot_dot}
  >>>
  parameter_meta {
    on_vertical_line_off: ""
    bucket_url_dot_dot_dot: ""
  }
}