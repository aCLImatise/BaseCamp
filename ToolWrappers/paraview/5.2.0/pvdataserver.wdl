version 1.0

task Pvdataserver {
  input {
    Int? client_host
  }
  command <<<
    pvdataserver \
      ~{if defined(client_host) then ("--client-host " +  '"' + client_host + '"') else ""}
  >>>
  parameter_meta {
    client_host: "-ch=opt                 Tell the data|render server the host name of the client, use with -rc.\\n--connect-id=opt        Set the ID of the server and client to make sure they match. 0 is reserved to imply none specified.\\n--cslog=opt             ClientServerStream log file.\\n--data-server-port=opt\\n-dsp=opt                What port data server use to connect to the client. (default 11111).\\n--disable-registry\\n-dr                     Do not use registry when running ParaView (for testing).\\n--enable-bt             Enable stack trace signal handler.\\n--enable-streaming      EXPERIMENTAL: When specified, view-based streaming is enabled for certain views and representation types.\\n--help\\n/?                      Displays available command line arguments.\\n--hostname=opt          Override the hostname to be used to connect to this process. By default, the hostname is determined using appropriate system calls.\\n--multi-clients         Allow server to keep listening for serveral client toconnect to it and share the same visualization session.\\n--multi-clients-debug   Allow server to keep listening for serveral client toconnect to it and share the same visualization session.While keeping the error macro on the server session for debug.\\n--print-monitors        Print detected monitors and exit (Windows only).\\n--reverse-connection\\n-rc                     Have the server connect to the client.\\n--test-plugin=opt       Specify the name of the plugin to load for testing\\n--test-plugin-path=opt  Specify the path where more plugins can be found.This is typically used when testing plugins.\\n--timeout=opt           Time (in minutes) since connecting with a client after which the server may timeout. The client typically shows warning messages before the server times out.\\n--version\\n-V                      Give the version number and exit.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}