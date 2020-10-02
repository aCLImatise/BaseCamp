class: CommandLineTool
id: dcmqrti.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean
  inputBinding:
    prefix: --arguments
- id: in__quiet_quiet
  doc: --quiet             quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: in__verbose_details
  doc: --verbose           verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: in__debug_debug
  doc: --debug             debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: in_ll
  doc: "--log-level         [l]evel: string constant\n(fatal, error, warn, info, debug,\
    \ trace)\nuse level l for the logger"
  type: boolean
  inputBinding:
    prefix: -ll
- id: in_lc
  doc: "--log-config        [f]ilename: string\nuse config file f for the logger"
  type: boolean
  inputBinding:
    prefix: -lc
- id: in__config_ilename
  doc: "--config            [f]ilename: string\nuse specific configuration file\n\
    (default: /usr/local/etc/dcmtk/dcmqrscp.cfg)"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_to
  doc: "--timeout           [s]econds: integer (default: unlimited)\ntimeout for connection\
    \ requests"
  type: boolean
  inputBinding:
    prefix: -to
- id: in_ta
  doc: "--acse-timeout      [s]econds: integer (default: 30)\ntimeout for ACSE messages"
  type: boolean
  inputBinding:
    prefix: -ta
- id: in_td
  doc: "--dimse-timeout     [s]econds: integer (default: unlimited)\ntimeout for DIMSE\
    \ messages"
  type: boolean
  inputBinding:
    prefix: -td
- id: in_xi
  doc: --propose-implicit  propose implicit VR little endian TS only
  type: boolean
  inputBinding:
    prefix: -xi
- id: in_ae_title
  doc: "[a]etitle: string\nset my AE title (default: TELNET_INITIATOR)"
  type: boolean
  inputBinding:
    prefix: --aetitle
- id: in_max_pdu
  doc: "[n]umber of bytes: integer (4096..131072)\nset max receive pdu to n bytes\n\
    (default: use value from configuration file)"
  type: boolean
  inputBinding:
    prefix: --max-pdu
- id: in__disablenewvr_disable
  doc: --disable-new-vr    disable support for new VRs, convert to OB
  type: boolean
  inputBinding:
    prefix: -u
- id: in_remote
  doc: "[t]itle: string\nconnect to remote database defined in cfg file\n"
  type: boolean
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
cwlVersion: v1.1
baseCommand:
- dcmqrti
