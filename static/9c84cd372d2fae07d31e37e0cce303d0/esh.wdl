version 1.0

task Esh {
  input {
    Boolean? web_server
    Boolean? dc_node
    Boolean? dc_server
    Boolean? dc_host
    Boolean? dc_group
    Boolean? i
    Boolean? s_file
    Boolean? saddr
  }
  command <<<
    esh \
      ~{if (web_server) then "--webserver" else ""} \
      ~{if (dc_node) then "--dcnode" else ""} \
      ~{if (dc_server) then "--dcserver" else ""} \
      ~{if (dc_host) then "--dchost" else ""} \
      ~{if (dc_group) then "--dcgroup" else ""} \
      ~{if (i) then "--i" else ""} \
      ~{if (s_file) then "--sfile" else ""} \
      ~{if (saddr) then "--saddr" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mapseq:1.2.6--h8dc0705_0"
  }
  parameter_meta {
    web_server: "start webserver   [type: bool default: false]"
    dc_node: "start computing node   [type: bool default: false]"
    dc_server: "start TCP distributed computing server   [type: bool default: false]"
    dc_host: "connect via TCP to distributed computing host   [type: estr default: ]"
    dc_group: "distributed computing group to join   [type: estr default: ]"
    i: "[type: estr default: ]"
    s_file: "named socket file to connect with daemon   [type: estr default: ]"
    saddr: "socket address to listen/connect with daemon   [type: estr default: ]"
  }
  output {
    File out_stdout = stdout()
  }
}