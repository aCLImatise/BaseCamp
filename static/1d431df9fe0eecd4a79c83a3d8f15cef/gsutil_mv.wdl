version 1.0

task GsutilMv {
  input {
    Boolean? p
    String src_url
    String dst_url
  }
  command <<<
    gsutil mv \
      ~{src_url} \
      ~{dst_url} \
      ~{true="-p" false="" p}
  >>>
  parameter_meta {
    p: ""
    src_url: ""
    dst_url: ""
  }
}