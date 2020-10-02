class: CommandLineTool
id: echoscu.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean
  inputBinding:
    prefix: --arguments
- id: in__quiet_quiet
  doc: --quiet              quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: in__verbose_details
  doc: --verbose            verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: in__debug_information
  doc: --debug              debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: in_ll
  doc: "--log-level          [l]evel: string constant\n(fatal, error, warn, info,\
    \ debug, trace)\nuse level l for the logger"
  type: boolean
  inputBinding:
    prefix: -ll
- id: in_lc
  doc: "--log-config         [f]ilename: string\nuse config file f for the logger"
  type: boolean
  inputBinding:
    prefix: -lc
- id: in_ae_title
  doc: "[a]etitle: string\nset my calling AE title (default: ECHOSCU)"
  type: boolean
  inputBinding:
    prefix: --aetitle
- id: in_call
  doc: "[a]etitle: string\nset called AE title of peer (default: ANY-SCP)"
  type: boolean
  inputBinding:
    prefix: --call
- id: in_propose_ts
  doc: "[n]umber: integer (1..36)\npropose n transfer syntaxes"
  type: boolean
  inputBinding:
    prefix: --propose-ts
- id: in_propose_pc
  doc: "[n]umber: integer (1..128)\npropose n presentation contexts"
  type: boolean
  inputBinding:
    prefix: --propose-pc
- id: in_to
  doc: "--timeout            [s]econds: integer (default: unlimited)\ntimeout for\
    \ connection requests"
  type: boolean
  inputBinding:
    prefix: -to
- id: in_ta
  doc: "--acse-timeout       [s]econds: integer (default: 30)\ntimeout for ACSE messages"
  type: boolean
  inputBinding:
    prefix: -ta
- id: in_td
  doc: "--dimse-timeout      [s]econds: integer (default: unlimited)\ntimeout for\
    \ DIMSE messages"
  type: boolean
  inputBinding:
    prefix: -td
- id: in_max_pdu
  doc: "[n]umber of bytes: integer (4096..131072)\nset max receive pdu to n bytes\
    \ (default: 16384)"
  type: boolean
  inputBinding:
    prefix: --max-pdu
- id: in_repeat
  doc: "[n]umber: integer\nrepeat n times"
  type: boolean
  inputBinding:
    prefix: --repeat
- id: in_abort
  doc: abort association instead of releasing it
  type: boolean
  inputBinding:
    prefix: --abort
- id: in_disable_tls
  doc: use normal TCP/IP connection (default)
  type: boolean
  inputBinding:
    prefix: --disable-tls
- id: in_pw
  doc: --null-passwd        use empty string as password
  type: boolean
  inputBinding:
    prefix: -pw
- id: in_pem_keys
  doc: read keys and certificates as PEM file (default)
  type: boolean
  inputBinding:
    prefix: --pem-keys
- id: in_der_keys
  doc: read keys and certificates as DER file
  type: boolean
  inputBinding:
    prefix: --der-keys
- id: in_rc
  doc: --require-peer-cert  verify peer certificate, fail if absent (default)
  type: boolean
  inputBinding:
    prefix: -rc
- id: in_vc
  doc: --verify-peer-cert   verify peer certificate if present
  type: boolean
  inputBinding:
    prefix: -vc
- id: in_ic
  doc: --ignore-peer-cert   don't verify peer certificate
  type: boolean
  inputBinding:
    prefix: -ic
- id: in_peer
  doc: hostname of DICOM peer
  type: string
  inputBinding:
    position: 0
- id: in_port
  doc: tcp/ip port number of peer
  type: string
  inputBinding:
    position: 1
- id: in_string
  doc: use specified password
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- echoscu
