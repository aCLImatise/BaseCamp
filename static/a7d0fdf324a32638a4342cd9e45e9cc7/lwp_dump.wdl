version 1.0

task Lwpdump {
  input {
    String url
  }
  command <<<
    lwp_dump \
      ~{url}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    url: ""
  }
  output {
    File out_stdout = stdout()
  }
}