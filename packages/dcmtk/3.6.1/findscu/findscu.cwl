class: CommandLineTool
id: findscu.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean
  inputBinding:
    prefix: --arguments
- id: in__quiet_quiet
  doc: --quiet               quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: in__verbose_details
  doc: --verbose             verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: in__debug_information
  doc: --debug               debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: in_ll
  doc: "--log-level           [l]evel: string constant\n(fatal, error, warn, info,\
    \ debug, trace)\nuse level l for the logger"
  type: boolean
  inputBinding:
    prefix: -ll
- id: in_lc
  doc: "--log-config          [f]ilename: string\nuse config file f for the logger"
  type: boolean
  inputBinding:
    prefix: -lc
- id: in__key_ggggeeeeoverride
  doc: "--key                 [k]ey: gggg,eeee=\"str\", path or dict. name=\"str\"\
    \noverride matching key"
  type: boolean
  inputBinding:
    prefix: -k
- id: in__worklist_use
  doc: --worklist            use modality worklist information model (def.)
  type: boolean
  inputBinding:
    prefix: -W
- id: in__patient_use
  doc: --patient             use patient root information model
  type: boolean
  inputBinding:
    prefix: -P
- id: in__study_model
  doc: --study               use study root information model
  type: boolean
  inputBinding:
    prefix: -S
- id: in__psonly_use
  doc: --psonly              use patient/study only information model
  type: boolean
  inputBinding:
    prefix: -O
- id: in_ae_title
  doc: "[a]etitle: string\nset my calling AE title (default: FINDSCU)"
  type: boolean
  inputBinding:
    prefix: --aetitle
- id: in_call
  doc: "[a]etitle: string\nset called AE title of peer (default: ANY-SCP)"
  type: boolean
  inputBinding:
    prefix: --call
- id: in__disablenewvr_disable
  doc: --disable-new-vr      disable support for new VRs, convert to OB
  type: boolean
  inputBinding:
    prefix: -u
- id: in__proposeuncompr_propose
  doc: "=   --propose-uncompr     propose all uncompressed TS, explicit VR\nwith local\
    \ byte ordering first (default)"
  type: boolean
  inputBinding:
    prefix: -x
- id: in_xe
  doc: "--propose-little      propose all uncompressed TS, explicit VR\nlittle endian\
    \ first"
  type: boolean
  inputBinding:
    prefix: -xe
- id: in_xb
  doc: "--propose-big         propose all uncompressed TS, explicit VR\nbig endian\
    \ first"
  type: boolean
  inputBinding:
    prefix: -xb
- id: in_xd
  doc: "--propose-deflated    propose deflated explicit VR little endian TS\nand all\
    \ uncompressed transfer syntaxes"
  type: boolean
  inputBinding:
    prefix: -xd
- id: in_xi
  doc: --propose-implicit    propose implicit VR little endian TS only
  type: boolean
  inputBinding:
    prefix: -xi
- id: in_to
  doc: "--timeout             [s]econds: integer (default: unlimited)\ntimeout for\
    \ connection requests"
  type: boolean
  inputBinding:
    prefix: -to
- id: in_ta
  doc: "--acse-timeout        [s]econds: integer (default: 30)\ntimeout for ACSE messages"
  type: boolean
  inputBinding:
    prefix: -ta
- id: in_td
  doc: "--dimse-timeout       [s]econds: integer (default: unlimited)\ntimeout for\
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
- id: in_cancel
  doc: "[n]umber: integer\ncancel after n responses (default: never)"
  type: boolean
  inputBinding:
    prefix: --cancel
- id: in_disable_tls
  doc: use normal TCP/IP connection (default)
  type: boolean
  inputBinding:
    prefix: --disable-tls
- id: in_pw
  doc: --null-passwd         use empty string as password
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
  doc: --require-peer-cert   verify peer certificate, fail if absent (def.)
  type: boolean
  inputBinding:
    prefix: -rc
- id: in_vc
  doc: --verify-peer-cert    verify peer certificate if present
  type: boolean
  inputBinding:
    prefix: -vc
- id: in_ic
  doc: --ignore-peer-cert    don't verify peer certificate
  type: boolean
  inputBinding:
    prefix: -ic
- id: in_od
  doc: "--output-directory    [d]irectory: string (default: \".\")\nwrite output files\
    \ to existing directory d"
  type: Directory
  inputBinding:
    prefix: -od
- id: in_dc
  doc: --disable-correction  disable automatic data correction (default)
  type: boolean
  inputBinding:
    prefix: -dc
- id: in_sr
  doc: --hide-responses      do not output responses to the logger
  type: boolean
  inputBinding:
    prefix: -sr
- id: in__extract_responses
  doc: --extract             extract responses to file (rsp0001.dcm, ...)
  type: boolean
  inputBinding:
    prefix: -X
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
- id: out_od
  doc: "--output-directory    [d]irectory: string (default: \".\")\nwrite output files\
    \ to existing directory d"
  type: Directory
  outputBinding:
    glob: $(inputs.in_od)
cwlVersion: v1.1
baseCommand:
- findscu
