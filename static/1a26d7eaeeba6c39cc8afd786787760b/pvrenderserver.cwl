class: CommandLineTool
id: pvrenderserver.cwl
inputs:
- id: in_client_host
  doc: Tell the data|render server the host name of the client, use with -rc.
  type: string?
  inputBinding:
    prefix: --client-host
- id: in_connect_id
  doc: Set the ID of the server and client to make sure they match. 0 is reserved
    to imply none specified.
  type: long?
  inputBinding:
    prefix: --connect-id
- id: in_cs_log
  doc: ClientServerStream log file.
  type: File?
  inputBinding:
    prefix: --cslog
- id: in_disable_registry
  doc: Do not use registry when running ParaView (for testing).
  type: boolean?
  inputBinding:
    prefix: --disable-registry
- id: in_disable_x_display_test
  doc: When specified, all X-display tests and OpenGL version checks are skipped.
    Use this option if you are getting remote-rendering disabled errors and you are
    positive that the X environment is setup properly and your OpenGL support is adequate
    (experimental).
  type: boolean?
  inputBinding:
    prefix: --disable-xdisplay-test
- id: in_enable_bt
  doc: Enable stack trace signal handler.
  type: boolean?
  inputBinding:
    prefix: --enable-bt
- id: in_enable_streaming
  doc: 'EXPERIMENTAL: When specified, view-based streaming is enabled for certain
    views and representation types.'
  type: boolean?
  inputBinding:
    prefix: --enable-streaming
- id: in_hostname
  doc: Override the hostname to be used to connect to this process. By default, the
    hostname is determined using appropriate system calls.
  type: string?
  inputBinding:
    prefix: --hostname
- id: in_print_monitors
  doc: Print detected monitors and exit (Windows only).
  type: boolean?
  inputBinding:
    prefix: --print-monitors
- id: in_render_server_port
  doc: What port should the render server use to connect to the client. (default 22221).
  type: long?
  inputBinding:
    prefix: --render-server-port
- id: in_reverse_connection
  doc: Have the server connect to the client.
  type: boolean?
  inputBinding:
    prefix: --reverse-connection
- id: in_test_plugin
  doc: Specify the name of the plugin to load for testing
  type: string?
  inputBinding:
    prefix: --test-plugin
- id: in_test_plugin_path
  doc: Specify the path where more plugins can be found.This is typically used when
    testing plugins.
  type: File?
  inputBinding:
    prefix: --test-plugin-path
- id: in_tile_dimensions_x
  doc: Size of tile display in the number of displays in each row of the display.
  type: long?
  inputBinding:
    prefix: --tile-dimensions-x
- id: in_tile_dimensions_y
  doc: Size of tile display in the number of displays in each column of the display.
  type: long?
  inputBinding:
    prefix: --tile-dimensions-y
- id: in_tile_mullion_x
  doc: Size of the gap between columns in the tile display, in Pixels.
  type: long?
  inputBinding:
    prefix: --tile-mullion-x
- id: in_tile_mullion_y
  doc: Size of the gap between rows in the tile display, in Pixels.
  type: long?
  inputBinding:
    prefix: --tile-mullion-y
- id: in_use_offscreen_rendering
  doc: Render offscreen on the satellite processes. This option only works with software
    rendering or mangled mesa on Unix.
  type: boolean?
  inputBinding:
    prefix: --use-offscreen-rendering
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pvrenderserver
