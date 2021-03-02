version 1.0

task Pvbatch {
  input {
    File? cs_log
    Boolean? disable_registry
    Boolean? disable_x_display_test
    Boolean? enable_bt
    Boolean? enable_streaming
    String? hostname
    Boolean? print_monitors
    Boolean? symmetric
    String? test_plugin
    File? test_plugin_path
    Boolean? use_offscreen_rendering
  }
  command <<<
    pvbatch \
      ~{if defined(cs_log) then ("--cslog " +  '"' + cs_log + '"') else ""} \
      ~{if (disable_registry) then "--disable-registry" else ""} \
      ~{if (disable_x_display_test) then "--disable-xdisplay-test" else ""} \
      ~{if (enable_bt) then "--enable-bt" else ""} \
      ~{if (enable_streaming) then "--enable-streaming" else ""} \
      ~{if defined(hostname) then ("--hostname " +  '"' + hostname + '"') else ""} \
      ~{if (print_monitors) then "--print-monitors" else ""} \
      ~{if (symmetric) then "--symmetric" else ""} \
      ~{if defined(test_plugin) then ("--test-plugin " +  '"' + test_plugin + '"') else ""} \
      ~{if defined(test_plugin_path) then ("--test-plugin-path " +  '"' + test_plugin_path + '"') else ""} \
      ~{if (use_offscreen_rendering) then "--use-offscreen-rendering" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cs_log: "ClientServerStream log file."
    disable_registry: "Do not use registry when running ParaView (for testing)."
    disable_x_display_test: "When specified, all X-display tests and OpenGL version checks are skipped. Use this option if you are getting remote-rendering disabled errors and you are positive that the X environment is setup properly and your OpenGL support is adequate (experimental)."
    enable_bt: "Enable stack trace signal handler."
    enable_streaming: "EXPERIMENTAL: When specified, view-based streaming is enabled for certain views and representation types."
    hostname: "Override the hostname to be used to connect to this process. By default, the hostname is determined using appropriate system calls."
    print_monitors: "Print detected monitors and exit (Windows only)."
    symmetric: "When specified, the python script is processed symmetrically on all processes."
    test_plugin: "Specify the name of the plugin to load for testing"
    test_plugin_path: "Specify the path where more plugins can be found.This is typically used when testing plugins."
    use_offscreen_rendering: "Render offscreen on the satellite processes. This option only works with software rendering or mangled mesa on Unix."
  }
  output {
    File out_stdout = stdout()
  }
}