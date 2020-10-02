class: CommandLineTool
id: dcmrecv.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean
  inputBinding:
    prefix: --arguments
- id: in__quiet_quiet
  doc: --quiet                quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: in__verbose_details
  doc: --verbose              verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: in__debug_information
  doc: --debug                debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: in_ll
  doc: "--log-level            [l]evel: string constant\n(fatal, error, warn, info,\
    \ debug, trace)\nuse level l for the logger"
  type: boolean
  inputBinding:
    prefix: -ll
- id: in_lc
  doc: "--log-config           [f]ilename: string\nuse config file f for the logger"
  type: boolean
  inputBinding:
    prefix: -lc
- id: in_xf
  doc: "--config-file          [f]ilename, [p]rofile: string\nuse profile p from configuration\
    \ file f"
  type: boolean
  inputBinding:
    prefix: -xf
- id: in_ae_title
  doc: "[a]etitle: string\nset my AE title (default: DCMRECV)"
  type: boolean
  inputBinding:
    prefix: --aetitle
- id: in_use_called_ae_title
  doc: always respond with called AE title
  type: boolean
  inputBinding:
    prefix: --use-called-aetitle
- id: in_ta
  doc: "--acse-timeout         [s]econds: integer (default: 30)\ntimeout for ACSE\
    \ messages"
  type: boolean
  inputBinding:
    prefix: -ta
- id: in_td
  doc: "--dimse-timeout        [s]econds: integer (default: unlimited)\ntimeout for\
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
- id: in_disable_host_lookup
  doc: disable hostname lookup
  type: boolean
  inputBinding:
    prefix: --disable-host-lookup
- id: in_od
  doc: "--output-directory     [d]irectory: string (default: \".\")\nwrite received\
    \ objects to existing directory d"
  type: Directory
  inputBinding:
    prefix: -od
- id: in__nosubdir_generate
  doc: --no-subdir            do not generate any subdirectories (default)
  type: boolean
  inputBinding:
    prefix: -s
- id: in_fe
  doc: "--filename-extension   [e]xtension: string (default: none)\nappend e to all\
    \ generated filenames"
  type: boolean
  inputBinding:
    prefix: -fe
- id: in__normal_allow
  doc: --normal               allow implicit format conversions (default)
  type: boolean
  inputBinding:
    prefix: -B
- id: in_ignore
  doc: ignore dataset, receive but do not store it
  type: boolean
  inputBinding:
    prefix: --ignore
- id: in_port
  doc: tcp/ip port number to listen on
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_od
  doc: "--output-directory     [d]irectory: string (default: \".\")\nwrite received\
    \ objects to existing directory d"
  type: Directory
  outputBinding:
    glob: $(inputs.in_od)
cwlVersion: v1.1
baseCommand:
- dcmrecv
