version 1.0

task LwpDump {
  input {
    String? urlUrl
  }
  command <<<
    lwp-dump \
      ~{urlUrl}
  >>>
}