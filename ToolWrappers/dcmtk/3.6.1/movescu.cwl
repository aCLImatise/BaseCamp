class: CommandLineTool
id: movescu.cwl
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
- id: in_key
  doc: "[k]ey: gggg,eeee=\"str\" or dict. name=\"str\"\noverride matching key"
  type: boolean?
  inputBinding:
    prefix: --key
- id: in_patient
  doc: use patient root information model (default)
  type: boolean?
  inputBinding:
    prefix: --patient
- id: in_study
  doc: use study root information model
  type: boolean?
  inputBinding:
    prefix: --study
- id: in_ps_only
  doc: use patient/study only information model
  type: boolean?
  inputBinding:
    prefix: --psonly
- id: in_ae_title
  doc: "[a]etitle: string\nset my calling AE title (default: MOVESCU)"
  type: boolean?
  inputBinding:
    prefix: --aetitle
- id: in_call
  doc: "[a]etitle: string\nset called AE title of peer (default: ANY-SCP)"
  type: boolean?
  inputBinding:
    prefix: --call
- id: in_move
  doc: "[a]etitle: string\nset move destinat. AE title (default: MOVESCU)"
  type: boolean?
  inputBinding:
    prefix: --move
- id: in__proposeuncompr_propose
  doc: "=   --propose-uncompr      propose all uncompressed TS, explicit VR\nwith\
    \ local byte ordering first (default)"
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_propose_little
  doc: "propose all uncompressed TS, explicit VR\nlittle endian first"
  type: boolean?
  inputBinding:
    prefix: --propose-little
- id: in_propose_big
  doc: "propose all uncompressed TS, explicit VR\nbig endian first"
  type: boolean?
  inputBinding:
    prefix: --propose-big
- id: in_propose_deflated
  doc: "propose deflated explicit VR little endian TS\nand all uncompressed transfer\
    \ syntaxes"
  type: boolean?
  inputBinding:
    prefix: --propose-deflated
- id: in_propose_implicit
  doc: propose implicit VR little endian TS only
  type: boolean?
  inputBinding:
    prefix: --propose-implicit
- id: in_no_port
  doc: no port for incoming associations (default)
  type: boolean?
  inputBinding:
    prefix: --no-port
- id: in_pending_ignore
  doc: assume no dataset present (default)
  type: boolean?
  inputBinding:
    prefix: --pending-ignore
- id: in_pending_read
  doc: read and ignore dataset
  type: boolean?
  inputBinding:
    prefix: --pending-read
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
- id: in_max_pdu
  doc: "[n]umber of bytes: integer (4096..131072)\nset max receive pdu to n bytes\
    \ (default: 16384)"
  type: boolean?
  inputBinding:
    prefix: --max-pdu
- id: in_disable_host_lookup
  doc: disable hostname lookup
  type: boolean?
  inputBinding:
    prefix: --disable-host-lookup
- id: in_repeat
  doc: "[n]umber: integer\nrepeat n times"
  type: boolean?
  inputBinding:
    prefix: --repeat
- id: in_abort
  doc: abort association instead of releasing it
  type: boolean?
  inputBinding:
    prefix: --abort
- id: in_ignore
  doc: ignore store data, receive but do not store
  type: boolean?
  inputBinding:
    prefix: --ignore
- id: in_cancel
  doc: "[n]umber: integer\ncancel after n responses (default: never)"
  type: boolean?
  inputBinding:
    prefix: --cancel
- id: in_uid_padding
  doc: silently correct space-padded UIDs
  type: boolean?
  inputBinding:
    prefix: --uid-padding
- id: in_output_directory
  doc: "[d]irectory: string (default: \".\")\nwrite received objects to existing directory\
    \ d"
  type: Directory?
  inputBinding:
    prefix: --output-directory
- id: in_normal
  doc: allow implicit format conversions (default)
  type: boolean?
  inputBinding:
    prefix: --normal
- id: in_write_dataset
  doc: write data set without file meta information
  type: boolean?
  inputBinding:
    prefix: --write-dataset
- id: in_disable_new_vr
  doc: disable support for new VRs, convert to OB
  type: boolean?
  inputBinding:
    prefix: --disable-new-vr
- id: in_group_length_remove
  doc: always write without group length elements
  type: boolean?
  inputBinding:
    prefix: --group-length-remove
- id: in_length_undefined
  doc: write with undefined lengths
  type: boolean?
  inputBinding:
    prefix: --length-undefined
- id: in_padding_off
  doc: no padding (default)
  type: boolean?
  inputBinding:
    prefix: --padding-off
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
  doc: DICOM query file(s)
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: "[d]irectory: string (default: \".\")\nwrite received objects to existing directory\
    \ d"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- movescu
