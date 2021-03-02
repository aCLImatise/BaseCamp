version 1.0

task Pvserver {
  input {
    String? client_host
    Int? connect_id
    File? cs_log
    Boolean? disable_registry
    Boolean? disable_x_display_test
    Boolean? enable_bt
    Boolean? enable_satellite_message_ids
    Boolean? enable_streaming
    String? hostname
    Boolean? multi_clients
    Boolean? multi_clients_debug
    Boolean? print_monitors
    Boolean? reverse_connection
    Int? server_port
    String? test_plugin
    File? test_plugin_path
    Int? tile_dimensions_x
    Int? tile_dimensions_y
    Int? tile_mullion_x
    Int? tile_mullion_y
    String? timeout
    Boolean? use_cuda_interop
    Boolean? use_offscreen_rendering
  }
  command <<<
    pvserver \
      ~{if defined(client_host) then ("--client-host " +  '"' + client_host + '"') else ""} \
      ~{if defined(connect_id) then ("--connect-id " +  '"' + connect_id + '"') else ""} \
      ~{if defined(cs_log) then ("--cslog " +  '"' + cs_log + '"') else ""} \
      ~{if (disable_registry) then "--disable-registry" else ""} \
      ~{if (disable_x_display_test) then "--disable-xdisplay-test" else ""} \
      ~{if (enable_bt) then "--enable-bt" else ""} \
      ~{if (enable_satellite_message_ids) then "--enable-satellite-message-ids" else ""} \
      ~{if (enable_streaming) then "--enable-streaming" else ""} \
      ~{if defined(hostname) then ("--hostname " +  '"' + hostname + '"') else ""} \
      ~{if (multi_clients) then "--multi-clients" else ""} \
      ~{if (multi_clients_debug) then "--multi-clients-debug" else ""} \
      ~{if (print_monitors) then "--print-monitors" else ""} \
      ~{if (reverse_connection) then "--reverse-connection" else ""} \
      ~{if defined(server_port) then ("--server-port " +  '"' + server_port + '"') else ""} \
      ~{if defined(test_plugin) then ("--test-plugin " +  '"' + test_plugin + '"') else ""} \
      ~{if defined(test_plugin_path) then ("--test-plugin-path " +  '"' + test_plugin_path + '"') else ""} \
      ~{if defined(tile_dimensions_x) then ("--tile-dimensions-x " +  '"' + tile_dimensions_x + '"') else ""} \
      ~{if defined(tile_dimensions_y) then ("--tile-dimensions-y " +  '"' + tile_dimensions_y + '"') else ""} \
      ~{if defined(tile_mullion_x) then ("--tile-mullion-x " +  '"' + tile_mullion_x + '"') else ""} \
      ~{if defined(tile_mullion_y) then ("--tile-mullion-y " +  '"' + tile_mullion_y + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{if (use_cuda_interop) then "--use-cuda-interop" else ""} \
      ~{if (use_offscreen_rendering) then "--use-offscreen-rendering" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    client_host: "Tell the data|render server the host name of the client, use with -rc."
    connect_id: "Set the ID of the server and client to make sure they match. 0 is reserved to imply none specified."
    cs_log: "ClientServerStream log file."
    disable_registry: "Do not use registry when running ParaView (for testing)."
    disable_x_display_test: "When specified, all X-display tests and OpenGL version checks are skipped. Use this option if you are getting remote-rendering disabled errors and you are positive that the X environment is setup properly and your OpenGL support is adequate (experimental)."
    enable_bt: "Enable stack trace signal handler."
    enable_satellite_message_ids: "When specified, server side messages shown on client show rank of originating process"
    enable_streaming: "EXPERIMENTAL: When specified, view-based streaming is enabled for certain views and representation types."
    hostname: "Override the hostname to be used to connect to this process. By default, the hostname is determined using appropriate system calls."
    multi_clients: "Allow server to keep listening for serveral client toconnect to it and share the same visualization session."
    multi_clients_debug: "Allow server to keep listening for serveral client toconnect to it and share the same visualization session.While keeping the error macro on the server session for debug."
    print_monitors: "Print detected monitors and exit (Windows only)."
    reverse_connection: "Have the server connect to the client."
    server_port: "What port should the combined server use to connect to the client. (default 11111)."
    test_plugin: "Specify the name of the plugin to load for testing"
    test_plugin_path: "Specify the path where more plugins can be found.This is typically used when testing plugins."
    tile_dimensions_x: "Size of tile display in the number of displays in each row of the display."
    tile_dimensions_y: "Size of tile display in the number of displays in each column of the display."
    tile_mullion_x: "Size of the gap between columns in the tile display, in Pixels."
    tile_mullion_y: "Size of the gap between rows in the tile display, in Pixels."
    timeout: "Time (in minutes) since connecting with a client after which the server may timeout. The client typically shows warning messages before the server times out."
    use_cuda_interop: "When specified, piston classes will use cuda interop for direct rendering"
    use_offscreen_rendering: "Render offscreen on the satellite processes. This option only works with software rendering or mangled mesa on Unix."
  }
  output {
    File out_stdout = stdout()
  }
}