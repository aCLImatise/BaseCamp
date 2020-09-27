version 1.0

task Pvbatch {
  input {
    Int? cs_log
  }
  command <<<
    pvbatch \
      ~{if defined(cs_log) then ("--cslog " +  '"' + cs_log + '"') else ""}
  >>>
  parameter_meta {
    cs_log: "ClientServerStream log file.\\n--disable-registry\\n-dr                        Do not use registry when running ParaView (for testing).\\n--disable-xdisplay-test    When specified, all X-display tests and OpenGL version checks are skipped. Use this option if you are getting remote-rendering disabled errors and you are positive that the X environment is setup properly and your OpenGL support is adequate (experimental).\\n--enable-bt                Enable stack trace signal handler.\\n--enable-streaming         EXPERIMENTAL: When specified, view-based streaming is enabled for certain views and representation types.\\n--help\\n/?                         Displays available command line arguments.\\n--hostname=opt             Override the hostname to be used to connect to this process. By default, the hostname is determined using appropriate system calls.\\n--print-monitors           Print detected monitors and exit (Windows only).\\n--symmetric\\n-sym                       When specified, the python script is processed symmetrically on all processes.\\n--test-plugin=opt          Specify the name of the plugin to load for testing\\n--test-plugin-path=opt     Specify the path where more plugins can be found.This is typically used when testing plugins.\\n--use-offscreen-rendering  Render offscreen on the satellite processes. This option only works with software rendering or mangled mesa on Unix.\\n--version\\n-V                         Give the version number and exit.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}