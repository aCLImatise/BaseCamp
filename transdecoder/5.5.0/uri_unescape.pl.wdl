version 1.0

task UriUnescapepl {
  command <<<
    uri_unescape_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}