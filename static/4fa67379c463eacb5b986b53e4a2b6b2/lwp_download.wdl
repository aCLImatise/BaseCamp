version 1.0

task Lwpdownload {
  input {
    Boolean? a
    Boolean? more_options
    Boolean? options
    String url
    String? l_path
  }
  command <<<
    lwp_download \
      ~{url} \
      ~{l_path} \
      ~{if (a) then "-a" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    a: ""
    more_options: ""
    options: ""
    url: ""
    l_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}