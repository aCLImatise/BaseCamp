class: CommandLineTool
id: dcmqrscp.cwl
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
- id: in_config
  doc: "[f]ilename: string\nuse specific configuration file\n(default: /usr/local/etc/dcmtk/dcmqrscp.cfg)"
  type: boolean?
  inputBinding:
    prefix: --config
- id: in_single_process
  doc: single process mode
  type: boolean?
  inputBinding:
    prefix: --single-process
- id: in_fork
  doc: fork child process for each assoc. (default)
  type: boolean?
  inputBinding:
    prefix: --fork
- id: in_require_find
  doc: "reject all MOVE/GET presentation contexts for\nwhich no correspond. FIND context\
    \ is proposed"
  type: boolean?
  inputBinding:
    prefix: --require-find
- id: in_no_parallel_store
  doc: "reject multiple simultaneous STORE presentat.\ncontexts for one application\
    \ entity title"
  type: boolean?
  inputBinding:
    prefix: --no-parallel-store
- id: in_disable_get
  doc: disable C-GET support
  type: boolean?
  inputBinding:
    prefix: --disable-get
- id: in_allow_shutdown
  doc: allow external shutdown via private SOP class
  type: boolean?
  inputBinding:
    prefix: --allow-shutdown
- id: in_check_find
  doc: check C-FIND identifier validity
  type: boolean?
  inputBinding:
    prefix: --check-find
- id: in_no_check_find
  doc: do not check C-FIND identifier validity (def.)
  type: boolean?
  inputBinding:
    prefix: --no-check-find
- id: in_check_move
  doc: check C-MOVE identifier validity
  type: boolean?
  inputBinding:
    prefix: --check-move
- id: in_no_check_move
  doc: do not check C-MOVE identifier validity (def.)
  type: boolean?
  inputBinding:
    prefix: --no-check-move
- id: in_move_unrestricted
  doc: do not restrict move destination (default)
  type: boolean?
  inputBinding:
    prefix: --move-unrestricted
- id: in_move_ae_title
  doc: restrict move dest. to requesting AE title
  type: boolean?
  inputBinding:
    prefix: --move-aetitle
- id: in_move_host
  doc: restrict move destination to requesting host
  type: boolean?
  inputBinding:
    prefix: --move-host
- id: in_move_vendor
  doc: restrict move destination to requesting vendor
  type: boolean?
  inputBinding:
    prefix: --move-vendor
- id: in_no_patient_root
  doc: do not support Patient Root Q/R models
  type: boolean?
  inputBinding:
    prefix: --no-patient-root
- id: in_no_study_root
  doc: do not support Study Root Q/R models
  type: boolean?
  inputBinding:
    prefix: --no-study-root
- id: in_no_patient_study
  doc: do not support Patient/Study Only Q/R models
  type: boolean?
  inputBinding:
    prefix: --no-patient-study
- id: in__proposeuncompr_propose
  doc: "=   --propose-uncompr       propose all uncompressed TS, explicit VR\nwith\
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
- id: in_propose_implicit
  doc: propose implicit VR little endian TS only
  type: boolean?
  inputBinding:
    prefix: --propose-implicit
- id: in_propose_lossless
  doc: "propose default JPEG lossless TS\nand all uncompressed transfer syntaxes"
  type: boolean?
  inputBinding:
    prefix: --propose-lossless
- id: in_propose_jpeg_eight
  doc: "propose default JPEG lossy TS for 8 bit data\nand all uncompressed transfer\
    \ syntaxes"
  type: boolean?
  inputBinding:
    prefix: --propose-jpeg8
- id: in_propose_jpeg_one_two
  doc: "propose default JPEG lossy TS for 12 bit data\nand all uncompressed transfer\
    \ syntaxes"
  type: boolean?
  inputBinding:
    prefix: --propose-jpeg12
- id: in_propose_j_two_k_lossless
  doc: "propose JPEG 2000 lossless TS\nand all uncompressed transfer syntaxes"
  type: boolean?
  inputBinding:
    prefix: --propose-j2k-lossless
- id: in_propose_j_two_k_lossy
  doc: "propose JPEG 2000 lossy TS\nand all uncompressed transfer syntaxes"
  type: boolean?
  inputBinding:
    prefix: --propose-j2k-lossy
- id: in_propose_jls_lossless
  doc: "propose JPEG-LS lossless TS\nand all uncompressed transfer syntaxes"
  type: boolean?
  inputBinding:
    prefix: --propose-jls-lossless
- id: in_propose_jls_lossy
  doc: "propose JPEG-LS lossy TS\nand all uncompressed transfer syntaxes"
  type: boolean?
  inputBinding:
    prefix: --propose-jls-lossy
- id: in_propose_mpeg_two
  doc: propose MPEG2 Main Profile @ Main Level TS only
  type: boolean?
  inputBinding:
    prefix: --propose-mpeg2
- id: in_propose_mpeg_two_high
  doc: propose MPEG2 Main Profile @ High Level TS only
  type: boolean?
  inputBinding:
    prefix: --propose-mpeg2-high
- id: in_propose_mpeg_four
  doc: propose MPEG4 AVC/H.264 HP / Level 4.1 TS only
  type: boolean?
  inputBinding:
    prefix: --propose-mpeg4
- id: in_propose_mpeg_four_bd
  doc: propose MPEG4 AVC/H.264 BD-compatible TS only
  type: boolean?
  inputBinding:
    prefix: --propose-mpeg4-bd
- id: in_propose_rle
  doc: "propose RLE lossless TS\nand all uncompressed transfer syntaxes"
  type: boolean?
  inputBinding:
    prefix: --propose-rle
- id: in_propose_deflated
  doc: "propose deflated expl. VR little endian TS\nand all uncompressed transfer\
    \ syntaxes"
  type: boolean?
  inputBinding:
    prefix: --propose-deflated
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
  doc: "[n]umber of bytes: integer (4096..131072)\nset max receive pdu to n bytes\n\
    (default: use value from configuration file)"
  type: boolean?
  inputBinding:
    prefix: --max-pdu
- id: in_disable_host_lookup
  doc: disable hostname lookup
  type: boolean?
  inputBinding:
    prefix: --disable-host-lookup
- id: in_refuse
  doc: refuse association
  type: boolean?
  inputBinding:
    prefix: --refuse
- id: in_reject
  doc: reject association if no implement. class UID
  type: boolean?
  inputBinding:
    prefix: --reject
- id: in_ignore
  doc: ignore store data, receive but do not store
  type: boolean?
  inputBinding:
    prefix: --ignore
- id: in_uid_padding
  doc: silently correct space-padded UIDs
  type: boolean?
  inputBinding:
    prefix: --uid-padding
- id: in_disable_new_vr
  doc: disable support for new VRs, convert to OB
  type: boolean?
  inputBinding:
    prefix: --disable-new-vr
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
- id: in_port
  doc: "tcp/ip port number to listen on\n(default: in config file)"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dcmqrscp
