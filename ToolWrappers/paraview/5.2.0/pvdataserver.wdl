version 1.0

task Pvdataserver {
  input {
    String? client_host
    Int? connect_id
    File? cs_log
    Int? data_server_port
    Boolean? disable_registry
    Boolean? enable_bt
    Boolean? enable_streaming
    String? hostname
    Boolean? multi_clients
    Boolean? multi_clients_debug
    Boolean? print_monitors
    Boolean? reverse_connection
    String? test_plugin
    File? test_plugin_path
    String? timeout
  }
  command <<<
    pvdataserver \
      ~{if defined(client_host) then ("--client-host " +  '"' + client_host + '"') else ""} \
      ~{if defined(connect_id) then ("--connect-id " +  '"' + connect_id + '"') else ""} \
      ~{if defined(cs_log) then ("--cslog " +  '"' + cs_log + '"') else ""} \
      ~{if defined(data_server_port) then ("--data-server-port " +  '"' + data_server_port + '"') else ""} \
      ~{if (disable_registry) then "--disable-registry" else ""} \
      ~{if (enable_bt) then "--enable-bt" else ""} \
      ~{if (enable_streaming) then "--enable-streaming" else ""} \
      ~{if defined(hostname) then ("--hostname " +  '"' + hostname + '"') else ""} \
      ~{if (multi_clients) then "--multi-clients" else ""} \
      ~{if (multi_clients_debug) then "--multi-clients-debug" else ""} \
      ~{if (print_monitors) then "--print-monitors" else ""} \
      ~{if (reverse_connection) then "--reverse-connection" else ""} \
      ~{if defined(test_plugin) then ("--test-plugin " +  '"' + test_plugin + '"') else ""} \
      ~{if defined(test_plugin_path) then ("--test-plugin-path " +  '"' + test_plugin_path + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    client_host: "Tell the data|render server the host name of the client, use with -rc."
    connect_id: "Set the ID of the server and client to make sure they match. 0 is reserved to imply none specified."
    cs_log: "ClientServerStream log file."
    data_server_port: "What port data server use to connect to the client. (default 11111)."
    disable_registry: "Do not use registry when running ParaView (for testing)."
    enable_bt: "Enable stack trace signal handler."
    enable_streaming: "EXPERIMENTAL: When specified, view-based streaming is enabled for certain views and representation types."
    hostname: "Override the hostname to be used to connect to this process. By default, the hostname is determined using appropriate system calls."
    multi_clients: "Allow server to keep listening for serveral client toconnect to it and share the same visualization session."
    multi_clients_debug: "Allow server to keep listening for serveral client toconnect to it and share the same visualization session.While keeping the error macro on the server session for debug."
    print_monitors: "Print detected monitors and exit (Windows only)."
    reverse_connection: "Have the server connect to the client."
    test_plugin: "Specify the name of the plugin to load for testing"
    test_plugin_path: "Specify the path where more plugins can be found.This is typically used when testing plugins."
    timeout: "Time (in minutes) since connecting with a client after which the server may timeout. The client typically shows warning messages before the server times out."
  }
  output {
    File out_stdout = stdout()
  }
}