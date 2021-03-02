version 1.0

task JhsdbDebugd {
  input {
    String java
    String sun_dot_jvm_dot_hotspot_dot_debug_server
    String pid
    String? server
    String? id
  }
  command <<<
    jhsdb debugd \
      ~{java} \
      ~{sun_dot_jvm_dot_hotspot_dot_debug_server} \
      ~{pid} \
      ~{server} \
      ~{id}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    java: ""
    sun_dot_jvm_dot_hotspot_dot_debug_server: ""
    pid: ""
    server: ""
    id: ""
  }
  output {
    File out_stdout = stdout()
  }
}