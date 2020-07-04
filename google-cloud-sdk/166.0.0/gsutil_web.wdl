version 1.0

task GsutilWeb {
  input {
    String? m
    String? e
    String set
    String bucket_url_dot_dot_dot
  }
  command <<<
    gsutil web \
      ~{set} \
      ~{bucket_url_dot_dot_dot} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""}
  >>>
  parameter_meta {
    m: ""
    e: ""
    set: ""
    bucket_url_dot_dot_dot: ""
  }
}