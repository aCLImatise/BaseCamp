version 1.0

task GsutilStat {
  input {
    String? urlUrl
  }
  command <<<
    gsutil stat \
      ~{urlUrl}
  >>>
}