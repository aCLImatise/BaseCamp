version 1.0

task UriUnescapepl {
  command <<<
    uri_unescape_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}