version 1.0

task LwpDownload {
  input {
    Boolean? a
    String url
    String? l_path
  }
  command <<<
    lwp-download \
      ~{url} \
      ~{l_path} \
      ~{true="-a" false="" a}
  >>>
  parameter_meta {
    a: ""
    url: ""
    l_path: ""
  }
}