version 1.0

task GsutilLifecycleGet {
  input {
    String url
  }
  command <<<
    gsutil lifecycle get \
      ~{url}
  >>>
  parameter_meta {
    url: ""
  }
}