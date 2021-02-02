class: CommandLineTool
id: samp_hub.cwl
inputs:
- id: in_secret
  doc: custom secret code.
  type: string
  inputBinding:
    prefix: --secret
- id: in_addr
  doc: listening address (or IP).
  type: string
  inputBinding:
    prefix: --addr
- id: in_port
  doc: listening port number.
  type: long
  inputBinding:
    prefix: --port
- id: in_lock_file
  doc: custom lockfile.
  type: File
  inputBinding:
    prefix: --lockfile
- id: in_no_web_profile
  doc: run the Hub disabling the Web Profile.
  type: boolean
  inputBinding:
    prefix: --no-web-profile
- id: in_pool_size
  doc: the socket connections pool size.
  type: long
  inputBinding:
    prefix: --pool-size
- id: in_timeout
  doc: "set the Hub inactivity timeout in SECONDS. By default\nit is set to 0, that\
    \ is the Hub never expires."
  type: long
  inputBinding:
    prefix: --timeout
- id: in_client_timeout
  doc: "set the client inactivity timeout in SECONDS. By\ndefault it is set to 0,\
    \ that is the client never\nexpires."
  type: long
  inputBinding:
    prefix: --client-timeout
- id: in_log_level
  doc: "set the Hub instance log level (OFF, ERROR, WARNING,\nINFO, DEBUG)."
  type: string
  inputBinding:
    prefix: --log-level
- id: in_log_output
  doc: set the output file for the log messages.
  type: File
  inputBinding:
    prefix: --log-output
- id: in_label
  doc: assign a LABEL to the Hub.
  type: string
  inputBinding:
    prefix: --label
- id: in_multi
  doc: "run the Hub in multi-instance mode generating a custom\nlockfile with a random\
    \ name.\n"
  type: boolean
  inputBinding:
    prefix: --multi
- id: in_three_dot_zero_dot_five
  doc: ''
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log_output
  doc: set the output file for the log messages.
  type: File
  outputBinding:
    glob: $(inputs.in_log_output)
cwlVersion: v1.1
baseCommand:
- samp_hub
