version 1.0

task GsutilLifecycleGet {
  input {
    String? urlUrl
  }
  command <<<
    gsutil lifecycle get \
      ~{urlUrl}
  >>>
}