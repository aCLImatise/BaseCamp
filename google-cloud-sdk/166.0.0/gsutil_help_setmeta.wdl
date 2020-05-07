version 1.0

task GsutilHelpSetmeta {
  input {
    Boolean hH
    Boolean hH
    Boolean hH
  }
  command <<<
    gsutil help setmeta \
      ~{true="-h" false="" hH} \
      ~{true="-h" false="" hH} \
      ~{true="-h" false="" hH}
  >>>
}