version 1.0

task LwpDownload {
  input {
    Boolean? save_file_ascii
    Boolean? use_http_headers
    String url
    String? local_path
  }
  command <<<
    lwp-download \
      ~{url} \
      ~{local_path} \
      ~{true="-a" false="" save_file_ascii} \
      ~{true="-s" false="" use_http_headers}
  >>>
  parameter_meta {
    save_file_ascii: "save the file in ASCII mode"
    use_http_headers: "use HTTP headers to guess output filename"
    url: ""
    local_path: ""
  }
}