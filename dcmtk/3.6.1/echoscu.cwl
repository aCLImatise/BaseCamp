class: CommandLineTool
id: echoscu.cwl
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
  doc: --quiet              quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: --verbose            verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: --debug              debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: ll
  doc: '--log-level          [l]evel: string constant (fatal, error, warn, info, debug,
    trace) use level l for the logger'
  type: boolean
  inputBinding:
    prefix: -ll
- id: lc
  doc: '--log-config         [f]ilename: string use config file f for the logger'
  type: boolean
  inputBinding:
    prefix: -lc
- id: ae_title
  doc: '[a]etitle: string set my calling AE title (default: ECHOSCU)'
  type: boolean
  inputBinding:
    prefix: --aetitle
- id: call
  doc: '[a]etitle: string set called AE title of peer (default: ANY-SCP)'
  type: boolean
  inputBinding:
    prefix: --call
- id: propose_ts
  doc: '[n]umber: integer (1..36) propose n transfer syntaxes'
  type: boolean
  inputBinding:
    prefix: --propose-ts
- id: propose_pc
  doc: '[n]umber: integer (1..128) propose n presentation contexts'
  type: boolean
  inputBinding:
    prefix: --propose-pc
- id: to
  doc: '--timeout            [s]econds: integer (default: unlimited) timeout for connection
    requests'
  type: boolean
  inputBinding:
    prefix: -to
- id: ta
  doc: '--acse-timeout       [s]econds: integer (default: 30) timeout for ACSE messages'
  type: boolean
  inputBinding:
    prefix: -ta
- id: td
  doc: '--dimse-timeout      [s]econds: integer (default: unlimited) timeout for DIMSE
    messages'
  type: boolean
  inputBinding:
    prefix: -td
- id: max_pdu
  doc: '[n]umber of bytes: integer (4096..131072) set max receive pdu to n bytes (default:
    16384)'
  type: boolean
  inputBinding:
    prefix: --max-pdu
- id: repeat
  doc: '[n]umber: integer repeat n times'
  type: boolean
  inputBinding:
    prefix: --repeat
- id: abort
  doc: abort association instead of releasing it
  type: boolean
  inputBinding:
    prefix: --abort
- id: pw
  doc: --null-passwd        use empty string as password
  type: boolean
  inputBinding:
    prefix: -pw
- id: pem_keys
  doc: read keys and certificates as PEM file (default)
  type: boolean
  inputBinding:
    prefix: --pem-keys
- id: der_keys
  doc: read keys and certificates as DER file
  type: boolean
  inputBinding:
    prefix: --der-keys
- id: rc
  doc: --require-peer-cert  verify peer certificate, fail if absent (default)
  type: boolean
  inputBinding:
    prefix: -rc
- id: vc
  doc: --verify-peer-cert   verify peer certificate if present
  type: boolean
  inputBinding:
    prefix: -vc
- id: ic
  doc: --ignore-peer-cert   don't verify peer certificate
  type: boolean
  inputBinding:
    prefix: -ic
outputs: []
cwlVersion: v1.1
baseCommand:
- echoscu
