version 1.0

task LwpDump {
  input {
    String url
  }
  command <<<
    lwp-dump \
      ~{url}
  >>>
  parameter_meta {
    url: ""
  }
}