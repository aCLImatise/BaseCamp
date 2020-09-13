version 1.0

task Urlget {
  input {
    Boolean? url
  }
  command <<<
    urlget \
      ~{if (url) then "-url" else ""}
  >>>
  parameter_meta {
    url: ": enter url value: Error: Unable to get reply from user - end of standard input"
  }
  output {
    File out_stdout = stdout()
  }
}