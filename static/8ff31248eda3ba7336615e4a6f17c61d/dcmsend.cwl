class: CommandLineTool
id: dcmsend.cwl
inputs:
- id: in_list_decoders
  doc: list transfer syntaxes of decoders and exit
  type: boolean
  inputBinding:
    prefix: --list-decoders
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
- id: in__readdataset_read
  doc: --read-dataset         read data set without file meta information
  type: boolean
  inputBinding:
    prefix: -f
- id: in__norecurse_recurse
  doc: --no-recurse           do not recurse within directories (default)
  type: boolean
  inputBinding:
    prefix: -r
- id: in_dn
  doc: --decompress-never     never decompress compressed data sets
  type: boolean
  inputBinding:
    prefix: -dn
- id: in_nh
  doc: "--no-halt              do not halt on first invalid input file\nor if unsuccessful\
    \ store encountered"
  type: boolean
  inputBinding:
    prefix: -nh
- id: in_no_illegal_proposal
  doc: "do not propose any presentation context that\ndoes not contain the default\
    \ TS (if needed)"
  type: boolean
  inputBinding:
    prefix: --no-illegal-proposal
- id: in_no_uid_checks
  doc: do not check UID values of input files
  type: boolean
  inputBinding:
    prefix: --no-uid-checks
- id: in_ae_title
  doc: "[a]etitle: string\nset my calling AE title (default: DCMSEND)"
  type: boolean
  inputBinding:
    prefix: --aetitle
- id: in_call
  doc: "[a]etitle: string\nset called AE title of peer (default: ANY-SCP)"
  type: boolean
  inputBinding:
    prefix: --call
- id: in_ma
  doc: --single-association   always use a single association
  type: boolean
  inputBinding:
    prefix: -ma
- id: in_to
  doc: "--timeout              [s]econds: integer (default: unlimited)\ntimeout for\
    \ connection requests"
  type: boolean
  inputBinding:
    prefix: -to
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
- id: in_max_send_pdu
  doc: "[n]umber of bytes: integer (4096..131072)\nrestrict max send pdu to n bytes"
  type: boolean
  inputBinding:
    prefix: --max-send-pdu
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
- id: in_dcm_file_in
  doc: DICOM file or directory to be transmitted
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dcmsend
