version 1.0

task Pvpython {
  input {
    Int? connect_id
  }
  command <<<
    pvpython \
      ~{if defined(connect_id) then ("--connect-id " +  '"' + connect_id + '"') else ""}
  >>>
  parameter_meta {
    connect_id: "Set the ID of the server and client to make sure they match. 0 is reserved to imply none specified.\\n--cslog=opt             ClientServerStream log file.\\n--data=opt              Load the specified data. To specify file series replace the numeral with a '.' eg. my0.vtk, my1.vtk...myN.vtk becomes my..vtk\\n--disable-registry\\n-dr                     Do not use registry when running ParaView (for testing).\\n--enable-bt             Enable stack trace signal handler.\\n--enable-streaming      EXPERIMENTAL: When specified, view-based streaming is enabled for certain views and representation types.\\n--help\\n/?                      Displays available command line arguments.\\n--hostname=opt          Override the hostname to be used to connect to this process. By default, the hostname is determined using appropriate system calls.\\n--multi-servers         Allow client to connect to several pvserver\\n--print-monitors        Print detected monitors and exit (Windows only).\\n--server-url=opt\\n-url=opt                Set the server-url to connect with when the client starts. --server (-s) option supersedes this option, hence one should only use one of the two options.\\n--state=opt             Load the specified statefile (.pvsm).\\n--stereo                Tell the application to enable stereo rendering\\n--stereo-type=opt       Specify the stereo type. This valid only when --stereo is specified. Possible values are \\\"Crystal Eyes\\\", \\\"Red-Blue\\\", \\\"Interlaced\\\", \\\"Dresden\\\", \\\"Anaglyph\\\", \\\"Checkerboard\\\",\\\"SplitViewportHorizontal\\\"\\n--test-plugin=opt       Specify the name of the plugin to load for testing\\n--test-plugin-path=opt  Specify the path where more plugins can be found.This is typically used when testing plugins.\\n--use-cuda-interop\\n-cudaiop                When specified, piston classes will use cuda interop for direct rendering\\n--version\\n-V                      Give the version number and exit.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}