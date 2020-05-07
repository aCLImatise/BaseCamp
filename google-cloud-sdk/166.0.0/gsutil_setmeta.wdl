version 1.0

task GsutilSetmeta {
  input {
    Boolean hH
    Boolean hH
    Boolean hH
  }
  command <<<
    gsutil setmeta \
      ~{true="-h" false="" hH} \
      ~{true="-h" false="" hH} \
      ~{true="-h" false="" hH}
  >>>
}