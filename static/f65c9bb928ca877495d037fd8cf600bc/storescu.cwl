class: CommandLineTool
id: storescu.cwl
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
- id: in_read_dataset
  doc: read data set without file meta information
  type: boolean?
  inputBinding:
    prefix: --read-dataset
- id: in_no_recurse
  doc: do not recurse within directories (default)
  type: boolean?
  inputBinding:
    prefix: --no-recurse
- id: in_ae_title
  doc: "[a]etitle: string\nset my calling AE title (default: STORESCU)"
  type: boolean?
  inputBinding:
    prefix: --aetitle
- id: in_call
  doc: "[a]etitle: string\nset called AE title of peer (default: ANY-SCP)"
  type: boolean?
  inputBinding:
    prefix: --call
- id: in_config_file
  doc: "[f]ilename, [p]rofile: string\nuse profile p from config file f"
  type: boolean?
  inputBinding:
    prefix: --config-file
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
- id: in_required
  doc: "propose only required presentation contexts\n(default: propose all supported)"
  type: boolean?
  inputBinding:
    prefix: --required
- id: in_disable_new_vr
  doc: disable support for new VRs, convert to OB
  type: boolean?
  inputBinding:
    prefix: --disable-new-vr
- id: in_user
  doc: "[u]ser name: string\nauthenticate using user name u"
  type: boolean?
  inputBinding:
    prefix: --user
- id: in_password
  doc: "[p]assword: string (only with --user)\nauthenticate using password p"
  type: boolean?
  inputBinding:
    prefix: --password
- id: in_empty_password
  doc: send empty password (only with --user)
  type: boolean?
  inputBinding:
    prefix: --empty-password
- id: in_kerberos
  doc: "[f]ilename: string\nread kerberos ticket from file f"
  type: boolean?
  inputBinding:
    prefix: --kerberos
- id: in_saml
  doc: "[f]ilename: string\nread SAML request from file f"
  type: boolean?
  inputBinding:
    prefix: --saml
- id: in_pos_response
  doc: expect positive response
  type: boolean?
  inputBinding:
    prefix: --pos-response
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
- id: in_max_send_pdu
  doc: "[n]umber of bytes: integer (4096..131072)\nrestrict max send pdu to n bytes"
  type: boolean?
  inputBinding:
    prefix: --max-send-pdu
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
- id: in_no_halt
  doc: "do not halt if unsuccessful store encountered\n(default: do halt)"
  type: boolean?
  inputBinding:
    prefix: --no-halt
- id: in_uid_padding
  doc: silently correct space-padded UIDs
  type: boolean?
  inputBinding:
    prefix: --uid-padding
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
  doc: verify peer certificate, fail if absent (default)
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
- id: in_sent
  doc: '+IR   --invent-series      [n]umber: integer (implies --invent-instance)'
  type: string
  inputBinding:
    position: 0
- id: in_string
  doc: use specified password
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
- storescu
