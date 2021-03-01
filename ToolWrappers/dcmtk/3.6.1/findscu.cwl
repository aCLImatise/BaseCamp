class: CommandLineTool
id: findscu.cwl
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
  doc: "[k]ey: gggg,eeee=\"str\", path or dict. name=\"str\"\noverride matching key"
  type: boolean?
  inputBinding:
    prefix: --key
- id: in_work_list
  doc: use modality worklist information model (def.)
  type: boolean?
  inputBinding:
    prefix: --worklist
- id: in_patient
  doc: use patient root information model
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
  doc: "[a]etitle: string\nset my calling AE title (default: FINDSCU)"
  type: boolean?
  inputBinding:
    prefix: --aetitle
- id: in_call
  doc: "[a]etitle: string\nset called AE title of peer (default: ANY-SCP)"
  type: boolean?
  inputBinding:
    prefix: --call
- id: in_disable_new_vr
  doc: disable support for new VRs, convert to OB
  type: boolean?
  inputBinding:
    prefix: --disable-new-vr
- id: in__proposeuncompr_propose
  doc: "=   --propose-uncompr     propose all uncompressed TS, explicit VR\nwith local\
    \ byte ordering first (default)"
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
- id: in_cancel
  doc: "[n]umber: integer\ncancel after n responses (default: never)"
  type: boolean?
  inputBinding:
    prefix: --cancel
- id: in_disable_tls
  doc: use normal TCP/IP connection (default)
  type: boolean?
  inputBinding:
    prefix: --disable-tls
- id: in_null_passwd
  doc: use empty string as password
  type: boolean?
  inputBinding:
    prefix: --null-passwd
- id: in_pem_keys
  doc: read keys and certificates as PEM file (default)
  type: boolean?
  inputBinding:
    prefix: --pem-keys
- id: in_der_keys
  doc: read keys and certificates as DER file
  type: boolean?
  inputBinding:
    prefix: --der-keys
- id: in_require_peer_cert
  doc: verify peer certificate, fail if absent (def.)
  type: boolean?
  inputBinding:
    prefix: --require-peer-cert
- id: in_verify_peer_cert
  doc: verify peer certificate if present
  type: boolean?
  inputBinding:
    prefix: --verify-peer-cert
- id: in_ignore_peer_cert
  doc: don't verify peer certificate
  type: boolean?
  inputBinding:
    prefix: --ignore-peer-cert
- id: in_output_directory
  doc: "[d]irectory: string (default: \".\")\nwrite output files to existing directory\
    \ d"
  type: Directory?
  inputBinding:
    prefix: --output-directory
- id: in_disable_correction
  doc: disable automatic data correction (default)
  type: boolean?
  inputBinding:
    prefix: --disable-correction
- id: in_hide_responses
  doc: do not output responses to the logger
  type: boolean?
  inputBinding:
    prefix: --hide-responses
- id: in_extract
  doc: extract responses to file (rsp0001.dcm, ...)
  type: boolean?
  inputBinding:
    prefix: --extract
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
- id: in_string
  doc: use specified password
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: "[d]irectory: string (default: \".\")\nwrite output files to existing directory\
    \ d"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- findscu
