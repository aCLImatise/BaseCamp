version 1.0

task LwpDownload {
  input {
    Boolean aA
    Boolean sS
  }
  command <<<
    lwp-download \
      ~{true="-a" false="" aA} \
      ~{true="-s" false="" sS}
  >>>
}