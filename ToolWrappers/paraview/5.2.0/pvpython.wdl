version 1.0

task Pvpython {
  input {
    Int? connect_id
    File? cs_log
    File? data
    Boolean? disable_registry
    Boolean? enable_bt
    Boolean? enable_streaming
    String? hostname
    Boolean? multi_servers
    Boolean? print_monitors
    String? server_url
    String? state
    Boolean? stereo
    String? stereo_type
    String? test_plugin
    File? test_plugin_path
    Boolean? use_cuda_interop
  }
  command <<<
    pvpython \
      ~{if defined(connect_id) then ("--connect-id " +  '"' + connect_id + '"') else ""} \
      ~{if defined(cs_log) then ("--cslog " +  '"' + cs_log + '"') else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if (disable_registry) then "--disable-registry" else ""} \
      ~{if (enable_bt) then "--enable-bt" else ""} \
      ~{if (enable_streaming) then "--enable-streaming" else ""} \
      ~{if defined(hostname) then ("--hostname " +  '"' + hostname + '"') else ""} \
      ~{if (multi_servers) then "--multi-servers" else ""} \
      ~{if (print_monitors) then "--print-monitors" else ""} \
      ~{if defined(server_url) then ("--server-url " +  '"' + server_url + '"') else ""} \
      ~{if defined(state) then ("--state " +  '"' + state + '"') else ""} \
      ~{if (stereo) then "--stereo" else ""} \
      ~{if defined(stereo_type) then ("--stereo-type " +  '"' + stereo_type + '"') else ""} \
      ~{if defined(test_plugin) then ("--test-plugin " +  '"' + test_plugin + '"') else ""} \
      ~{if defined(test_plugin_path) then ("--test-plugin-path " +  '"' + test_plugin_path + '"') else ""} \
      ~{if (use_cuda_interop) then "--use-cuda-interop" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    connect_id: "Set the ID of the server and client to make sure they match. 0 is reserved to imply none specified."
    cs_log: "ClientServerStream log file."
    data: "Load the specified data. To specify file series replace the numeral with a '.' eg. my0.vtk, my1.vtk...myN.vtk becomes my..vtk"
    disable_registry: "Do not use registry when running ParaView (for testing)."
    enable_bt: "Enable stack trace signal handler."
    enable_streaming: "EXPERIMENTAL: When specified, view-based streaming is enabled for certain views and representation types."
    hostname: "Override the hostname to be used to connect to this process. By default, the hostname is determined using appropriate system calls."
    multi_servers: "Allow client to connect to several pvserver"
    print_monitors: "Print detected monitors and exit (Windows only)."
    server_url: "Set the server-url to connect with when the client starts. --server (-s) option supersedes this option, hence one should only use one of the two options."
    state: "Load the specified statefile (.pvsm)."
    stereo: "Tell the application to enable stereo rendering"
    stereo_type: "Specify the stereo type. This valid only when --stereo is specified. Possible values are \\\"Crystal Eyes\\\", \\\"Red-Blue\\\", \\\"Interlaced\\\", \\\"Dresden\\\", \\\"Anaglyph\\\", \\\"Checkerboard\\\",\\\"SplitViewportHorizontal\\\""
    test_plugin: "Specify the name of the plugin to load for testing"
    test_plugin_path: "Specify the path where more plugins can be found.This is typically used when testing plugins."
    use_cuda_interop: "When specified, piston classes will use cuda interop for direct rendering"
  }
  output {
    File out_stdout = stdout()
  }
}