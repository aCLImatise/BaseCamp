class: CommandLineTool
id: dcmqrti.cwl
inputs:
- id: peer
  doc: peer host name or symbolic name from cfg file
  type: string
  inputBinding:
    position: 0
- id: q
  doc: --quiet             quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: --verbose           verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: --debug             debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: ll
  doc: '--log-level         [l]evel: string constant (fatal, error, warn, info, debug,
    trace) use level l for the logger'
  type: boolean
  inputBinding:
    prefix: -ll
- id: lc
  doc: '--log-config        [f]ilename: string use config file f for the logger'
  type: boolean
  inputBinding:
    prefix: -lc
- id: c
  doc: '--config            [f]ilename: string use specific configuration file (default:
    /tmp/tmp_gcjhv_q/etc/dcmtk/dcmqrscp.cfg)'
  type: boolean
  inputBinding:
    prefix: -c
- id: to
  doc: '--timeout           [s]econds: integer (default: unlimited) timeout for connection
    requests'
  type: boolean
  inputBinding:
    prefix: -to
- id: ta
  doc: '--acse-timeout      [s]econds: integer (default: 30) timeout for ACSE messages'
  type: boolean
  inputBinding:
    prefix: -ta
- id: td
  doc: '--dimse-timeout     [s]econds: integer (default: unlimited) timeout for DIMSE
    messages'
  type: boolean
  inputBinding:
    prefix: -td
- id: xi
  doc: --propose-implicit  propose implicit VR little endian TS only
  type: boolean
  inputBinding:
    prefix: -xi
- id: ae_title
  doc: '[a]etitle: string set my AE title (default: TELNET_INITIATOR)'
  type: boolean
  inputBinding:
    prefix: --aetitle
- id: max_pdu
  doc: '[n]umber of bytes: integer (4096..131072) set max receive pdu to n bytes (default:
    use value from configuration file)'
  type: boolean
  inputBinding:
    prefix: --max-pdu
- id: u
  doc: --disable-new-vr    disable support for new VRs, convert to OB
  type: boolean
  inputBinding:
    prefix: -u
- id: remote
  doc: '[t]itle: string connect to remote database defined in cfg file'
  type: boolean
  inputBinding:
    prefix: --remote
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmqrti
