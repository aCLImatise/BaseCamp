class: CommandLineTool
id: termscu.cwl
inputs:
- id: peer
  doc: hostname of DICOM peer
  type: string
  inputBinding:
    position: 0
- id: port
  doc: tcp/ip port number of peer
  type: string
  inputBinding:
    position: 1
- id: q
  doc: --quiet       quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: --verbose     verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: --debug       debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: ll
  doc: '--log-level   [l]evel: string constant (fatal, error, warn, info, debug, trace)
    use level l for the logger'
  type: boolean
  inputBinding:
    prefix: -ll
- id: lc
  doc: '--log-config  [f]ilename: string use config file f for the logger'
  type: boolean
  inputBinding:
    prefix: -lc
- id: ae_title
  doc: '[a]etitle: string set my calling AE title (default: TERMSCU)'
  type: boolean
  inputBinding:
    prefix: --aetitle
- id: call
  doc: '[a]etitle: string set called AE title of peer (default: ANY-SCP)'
  type: boolean
  inputBinding:
    prefix: --call
- id: max_pdu
  doc: '[n]umber of bytes: integer (4096..131072) set max receive pdu to n bytes (default:
    16384)'
  type: boolean
  inputBinding:
    prefix: --max-pdu
outputs: []
cwlVersion: v1.1
baseCommand:
- termscu
