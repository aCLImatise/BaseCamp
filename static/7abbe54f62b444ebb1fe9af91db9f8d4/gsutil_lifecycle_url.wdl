version 1.0

task GsutilLifecycleUrl {
  input {
    String? getGet
    String? urlUrl
  }
  command <<<
    gsutil lifecycle url \
      ~{getGet} \
      ~{urlUrl}
  >>>
}