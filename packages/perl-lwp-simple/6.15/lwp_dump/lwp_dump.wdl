version 1.0

task Lwpdump {
  input {
    Int? agent
    String url
  }
  command <<<
    lwp_dump \
      ~{url} \
      ~{if defined(agent) then ("--agent " +  '"' + agent + '"') else ""}
  >>>
  parameter_meta {
    agent: "--keep-client-headers\\n--max-length <n>\\n--method <str>\\n--parse-head\\n--request\\n"
    url: ""
  }
  output {
    File out_stdout = stdout()
  }
}