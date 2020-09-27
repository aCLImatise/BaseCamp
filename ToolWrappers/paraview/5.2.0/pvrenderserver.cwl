class: CommandLineTool
id: pvrenderserver.cwl
inputs:
- id: in_client_host
  doc: "-ch=opt                    Tell the data|render server the host name of the\
    \ client, use with -rc.\n--connect-id=opt           Set the ID of the server and\
    \ client to make sure they match. 0 is reserved to imply none specified.\n--cslog=opt\
    \                ClientServerStream log file.\n--disable-registry\n-dr       \
    \                 Do not use registry when running ParaView (for testing).\n--disable-xdisplay-test\
    \    When specified, all X-display tests and OpenGL version checks are skipped.\
    \ Use this option if you are getting remote-rendering disabled errors and you\
    \ are positive that the X environment is setup properly and your OpenGL support\
    \ is adequate (experimental).\n--enable-bt                Enable stack trace signal\
    \ handler.\n--enable-streaming         EXPERIMENTAL: When specified, view-based\
    \ streaming is enabled for certain views and representation types.\n--help\n/?\
    \                         Displays available command line arguments.\n--hostname=opt\
    \             Override the hostname to be used to connect to this process. By\
    \ default, the hostname is determined using appropriate system calls.\n--print-monitors\
    \           Print detected monitors and exit (Windows only).\n--render-server-port=opt\n\
    -rsp=opt                   What port should the render server use to connect to\
    \ the client. (default 22221).\n--reverse-connection\n-rc                    \
    \    Have the server connect to the client.\n--test-plugin=opt          Specify\
    \ the name of the plugin to load for testing\n--test-plugin-path=opt     Specify\
    \ the path where more plugins can be found.This is typically used when testing\
    \ plugins.\n--tile-dimensions-x=opt\n-tdx=opt                   Size of tile display\
    \ in the number of displays in each row of the display.\n--tile-dimensions-y=opt\n\
    -tdy=opt                   Size of tile display in the number of displays in each\
    \ column of the display.\n--tile-mullion-x=opt\n-tmx=opt                   Size\
    \ of the gap between columns in the tile display, in Pixels.\n--tile-mullion-y=opt\n\
    -tmy=opt                   Size of the gap between rows in the tile display, in\
    \ Pixels.\n--use-offscreen-rendering  Render offscreen on the satellite processes.\
    \ This option only works with software rendering or mangled mesa on Unix.\n--version\n\
    -V                         Give the version number and exit.\n"
  type: long
  inputBinding:
    prefix: --client-host
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pvrenderserver
