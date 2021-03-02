class: CommandLineTool
id: dcmqrti.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean?
  inputBinding:
    prefix: --arguments
- id: in_quiet
  doc: quiet mode, print no warnings and errors
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: verbose mode, print processing details
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: debug mode, print debug information
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_log_level
  doc: "[l]evel: string constant\n(fatal, error, warn, info, debug, trace)\nuse level\
    \ l for the logger"
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_config
  doc: "[f]ilename: string\nuse config file f for the logger"
  type: boolean?
  inputBinding:
    prefix: --log-config
- id: in_config
  doc: "[f]ilename: string\nuse specific configuration file\n(default: /usr/local/etc/dcmtk/dcmqrscp.cfg)"
  type: boolean?
  inputBinding:
    prefix: --config
- id: in_timeout
  doc: "[s]econds: integer (default: unlimited)\ntimeout for connection requests"
  type: boolean?
  inputBinding:
    prefix: --timeout
- id: in_acse_timeout
  doc: "[s]econds: integer (default: 30)\ntimeout for ACSE messages"
  type: boolean?
  inputBinding:
    prefix: --acse-timeout
- id: in_dim_se_timeout
  doc: "[s]econds: integer (default: unlimited)\ntimeout for DIMSE messages"
  type: boolean?
  inputBinding:
    prefix: --dimse-timeout
- id: in_propose_implicit
  doc: propose implicit VR little endian TS only
  type: boolean?
  inputBinding:
    prefix: --propose-implicit
- id: in_ae_title
  doc: "[a]etitle: string\nset my AE title (default: TELNET_INITIATOR)"
  type: boolean?
  inputBinding:
    prefix: --aetitle
- id: in_max_pdu
  doc: "[n]umber of bytes: integer (4096..131072)\nset max receive pdu to n bytes\n\
    (default: use value from configuration file)"
  type: boolean?
  inputBinding:
    prefix: --max-pdu
- id: in_disable_new_vr
  doc: disable support for new VRs, convert to OB
  type: boolean?
  inputBinding:
    prefix: --disable-new-vr
- id: in_remote
  doc: "[t]itle: string\nconnect to remote database defined in cfg file\n"
  type: boolean?
  inputBinding:
    prefix: --remote
- id: in_peer
  doc: peer host name or symbolic name from cfg file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0
cwlVersion: v1.1
baseCommand:
- dcmqrti
