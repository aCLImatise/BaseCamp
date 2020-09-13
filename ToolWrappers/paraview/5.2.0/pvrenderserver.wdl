version 1.0

task Pvrenderserver {
  input {
    String? client_host
    String? ch
    Int? connect_id
    File? cs_log
    Boolean? disable_registry
    Boolean? dr
    Boolean? disable_x_display_test
    Boolean? enable_bt
    Boolean? enable_streaming
    String? hostname
    Boolean? print_monitors
    String? render_server_port
    Int? rsp
    Boolean? reverse_connection
    Boolean? rc
    String? test_plugin
    File? test_plugin_path
    String? tile_dimensions_x
    Int? tdx
    String? tile_dimensions_y
    Int? tdy
    String? tile_mullion_x
    Int? tmx
    String? tile_mullion_y
    Int? t_my
    Boolean? use_offscreen_rendering
    Boolean? give_version_number
  }
  command <<<
    pvrenderserver \
      ~{if defined(client_host) then ("--client-host " +  '"' + client_host + '"') else ""} \
      ~{if defined(ch) then ("-ch " +  '"' + ch + '"') else ""} \
      ~{if defined(connect_id) then ("--connect-id " +  '"' + connect_id + '"') else ""} \
      ~{if defined(cs_log) then ("--cslog " +  '"' + cs_log + '"') else ""} \
      ~{if (disable_registry) then "--disable-registry" else ""} \
      ~{if (dr) then "-dr" else ""} \
      ~{if (disable_x_display_test) then "--disable-xdisplay-test" else ""} \
      ~{if (enable_bt) then "--enable-bt" else ""} \
      ~{if (enable_streaming) then "--enable-streaming" else ""} \
      ~{if defined(hostname) then ("--hostname " +  '"' + hostname + '"') else ""} \
      ~{if (print_monitors) then "--print-monitors" else ""} \
      ~{if defined(render_server_port) then ("--render-server-port " +  '"' + render_server_port + '"') else ""} \
      ~{if defined(rsp) then ("-rsp " +  '"' + rsp + '"') else ""} \
      ~{if (reverse_connection) then "--reverse-connection" else ""} \
      ~{if (rc) then "-rc" else ""} \
      ~{if defined(test_plugin) then ("--test-plugin " +  '"' + test_plugin + '"') else ""} \
      ~{if defined(test_plugin_path) then ("--test-plugin-path " +  '"' + test_plugin_path + '"') else ""} \
      ~{if defined(tile_dimensions_x) then ("--tile-dimensions-x " +  '"' + tile_dimensions_x + '"') else ""} \
      ~{if defined(tdx) then ("-tdx " +  '"' + tdx + '"') else ""} \
      ~{if defined(tile_dimensions_y) then ("--tile-dimensions-y " +  '"' + tile_dimensions_y + '"') else ""} \
      ~{if defined(tdy) then ("-tdy " +  '"' + tdy + '"') else ""} \
      ~{if defined(tile_mullion_x) then ("--tile-mullion-x " +  '"' + tile_mullion_x + '"') else ""} \
      ~{if defined(tmx) then ("-tmx " +  '"' + tmx + '"') else ""} \
      ~{if defined(tile_mullion_y) then ("--tile-mullion-y " +  '"' + tile_mullion_y + '"') else ""} \
      ~{if defined(t_my) then ("-tmy " +  '"' + t_my + '"') else ""} \
      ~{if (use_offscreen_rendering) then "--use-offscreen-rendering" else ""} \
      ~{if (give_version_number) then "-V" else ""}
  >>>
  parameter_meta {
    client_host: ""
    ch: "Tell the data|render server the host name of the client, use with -rc."
    connect_id: "Set the ID of the server and client to make sure they match. 0 is reserved to imply none specified."
    cs_log: "ClientServerStream log file."
    disable_registry: ""
    dr: "Do not use registry when running ParaView (for testing)."
    disable_x_display_test: "When specified, all X-display tests and OpenGL version checks are skipped. Use this option if you are getting remote-rendering disabled errors and you are positive that the X environment is setup properly and your OpenGL support is adequate (experimental)."
    enable_bt: "Enable stack trace signal handler."
    enable_streaming: "EXPERIMENTAL: When specified, view-based streaming is enabled for certain views and representation types."
    hostname: "Override the hostname to be used to connect to this process. By default, the hostname is determined using appropriate system calls."
    print_monitors: "Print detected monitors and exit (Windows only)."
    render_server_port: ""
    rsp: "What port should the render server use to connect to the client. (default 22221)."
    reverse_connection: ""
    rc: "Have the server connect to the client."
    test_plugin: "Specify the name of the plugin to load for testing"
    test_plugin_path: "Specify the path where more plugins can be found.This is typically used when testing plugins."
    tile_dimensions_x: ""
    tdx: "Size of tile display in the number of displays in each row of the display."
    tile_dimensions_y: ""
    tdy: "Size of tile display in the number of displays in each column of the display."
    tile_mullion_x: ""
    tmx: "Size of the gap between columns in the tile display, in Pixels."
    tile_mullion_y: ""
    t_my: "Size of the gap between rows in the tile display, in Pixels."
    use_offscreen_rendering: "Render offscreen on the satellite processes. This option only works with software rendering or mangled mesa on Unix."
    give_version_number: "Give the version number and exit."
  }
  output {
    File out_stdout = stdout()
  }
}