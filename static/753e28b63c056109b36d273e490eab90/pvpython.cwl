class: CommandLineTool
id: pvpython.cwl
inputs:
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
- id: in_data
  doc: Load the specified data. To specify file series replace the numeral with a
    '.' eg. my0.vtk, my1.vtk...myN.vtk becomes my..vtk
  type: File?
  inputBinding:
    prefix: --data
- id: in_disable_registry
  doc: Do not use registry when running ParaView (for testing).
  type: boolean?
  inputBinding:
    prefix: --disable-registry
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
- id: in_multi_servers
  doc: Allow client to connect to several pvserver
  type: boolean?
  inputBinding:
    prefix: --multi-servers
- id: in_print_monitors
  doc: Print detected monitors and exit (Windows only).
  type: boolean?
  inputBinding:
    prefix: --print-monitors
- id: in_server_url
  doc: Set the server-url to connect with when the client starts. --server (-s) option
    supersedes this option, hence one should only use one of the two options.
  type: string?
  inputBinding:
    prefix: --server-url
- id: in_state
  doc: Load the specified statefile (.pvsm).
  type: string?
  inputBinding:
    prefix: --state
- id: in_stereo
  doc: Tell the application to enable stereo rendering
  type: boolean?
  inputBinding:
    prefix: --stereo
- id: in_stereo_type
  doc: Specify the stereo type. This valid only when --stereo is specified. Possible
    values are "Crystal Eyes", "Red-Blue", "Interlaced", "Dresden", "Anaglyph", "Checkerboard","SplitViewportHorizontal"
  type: string?
  inputBinding:
    prefix: --stereo-type
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
- id: in_use_cuda_interop
  doc: When specified, piston classes will use cuda interop for direct rendering
  type: boolean?
  inputBinding:
    prefix: --use-cuda-interop
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pvpython
