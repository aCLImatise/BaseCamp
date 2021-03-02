class: CommandLineTool
id: pvbatch.cwl
inputs:
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
- id: in_symmetric
  doc: When specified, the python script is processed symmetrically on all processes.
  type: boolean?
  inputBinding:
    prefix: --symmetric
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
- pvbatch
