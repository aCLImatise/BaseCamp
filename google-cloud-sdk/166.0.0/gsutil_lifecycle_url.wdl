version 1.0

task GsutilLifecycleUrl {
  input {
    String gs_util
    String lifecycle
    String get
    String url
  }
  command <<<
    gsutil lifecycle url \
      ~{gs_util} \
      ~{lifecycle} \
      ~{get} \
      ~{url}
  >>>
  parameter_meta {
    gs_util: ""
    lifecycle: ""
    get: ""
    url: ""
  }
}