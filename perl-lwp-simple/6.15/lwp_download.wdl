version 1.0

task LwpDownload {
  input {
    Boolean aA
    String? urlUrl
    String? lLPath
  }
  command <<<
    lwp-download \
      ~{urlUrl} \
      ~{true="-a" false="" aA} \
      ~{lLPath}
  >>>
}