version 1.0

task Lwpdownload {
  input {
    Boolean? save_file_ascii
    File? use_http_headers
    String save
    String url
    String use
    String http
    String the
    File file
    String headers
    String in
    String to
    String ascii
    String guess
    String var_output
  }
  command <<<
    lwp_download \
      ~{save} \
      ~{url} \
      ~{use} \
      ~{http} \
      ~{the} \
      ~{file} \
      ~{headers} \
      ~{in} \
      ~{to} \
      ~{ascii} \
      ~{guess} \
      ~{var_output} \
      ~{if (save_file_ascii) then "-a" else ""} \
      ~{if (use_http_headers) then "-s" else ""}
  >>>
  parameter_meta {
    save_file_ascii: "save the file in ASCII mode"
    use_http_headers: "use HTTP headers to guess output filename"
    save: ""
    url: ""
    use: ""
    http: ""
    the: ""
    file: ""
    headers: ""
    in: ""
    to: ""
    ascii: ""
    guess: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
    File out_use_http_headers = "${in_use_http_headers}"
  }
}