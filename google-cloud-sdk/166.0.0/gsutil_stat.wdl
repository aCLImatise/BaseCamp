version 1.0

task GsutilStat {
  input {
    String url_dot_dot_dot
  }
  command <<<
    gsutil stat \
      ~{url_dot_dot_dot}
  >>>
  parameter_meta {
    url_dot_dot_dot: ""
  }
}