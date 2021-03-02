version 1.0

task Storescu {
  input {
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? log_level
    Boolean? log_config
    Boolean? read_dataset
    Boolean? no_recurse
    Boolean? no_rename
    Boolean? ae_title
    Boolean? etitle_stringset_called
    Boolean? config_file
    Boolean? _proposeuncompr_propose
    Boolean? propose_little
    Boolean? propose_big
    Boolean? propose_implicit
    Boolean? propose_lossless
    Boolean? propose_jpeg_eight
    Boolean? propose_jpeg_one_two
    Boolean? propose_j_two_k_lossless
    Boolean? propose_j_two_k_lossy
    Boolean? propose_jls_lossless
    Boolean? propose_jls_lossy
    Boolean? propose_mpeg_two
    Boolean? propose_mpeg_two_high
    Boolean? propose_mpeg_four
    Boolean? propose_mpeg_four_bd
    Boolean? propose_mpeg_four_two_two_d
    Boolean? propose_mpeg_four_two_three_d
    Boolean? propose_mpeg_four_two_st
    Boolean? propose_he_vc
    Boolean? propose_he_vc_one_zero
    Boolean? propose_rle
    Boolean? propose_deflated
    Boolean? required
    Boolean? disable_new_vr
    Boolean? user
    Boolean? password
    Boolean? empty_password
    Boolean? kerberos
    Boolean? saml
    Boolean? jwt
    Boolean? pos_response
    Boolean? timeout
    Boolean? socket_timeout
    Boolean? acse_timeout
    Boolean? dim_se_timeout
    Boolean? max_pdu
    Boolean? max_send_pdu
    Boolean? repeat
    Boolean? abort
    Boolean? no_halt
    Boolean? uid_padding
    Boolean? disable_tls
    Boolean? null_passwd
    Boolean? pem_keys
    Boolean? der_keys
    Boolean? require_peer_cert
    Boolean? ignore_peer_cert
    String peer
    String port
    String dcm_file_in
    String sent
    String use_specified_password
  }
  command <<<
    storescu \
      ~{peer} \
      ~{port} \
      ~{dcm_file_in} \
      ~{sent} \
      ~{use_specified_password} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (read_dataset) then "--read-dataset" else ""} \
      ~{if (no_recurse) then "--no-recurse" else ""} \
      ~{if (no_rename) then "--no-rename" else ""} \
      ~{if (ae_title) then "--aetitle" else ""} \
      ~{if (etitle_stringset_called) then "--call" else ""} \
      ~{if (config_file) then "--config-file" else ""} \
      ~{if (_proposeuncompr_propose) then "-x" else ""} \
      ~{if (propose_little) then "--propose-little" else ""} \
      ~{if (propose_big) then "--propose-big" else ""} \
      ~{if (propose_implicit) then "--propose-implicit" else ""} \
      ~{if (propose_lossless) then "--propose-lossless" else ""} \
      ~{if (propose_jpeg_eight) then "--propose-jpeg8" else ""} \
      ~{if (propose_jpeg_one_two) then "--propose-jpeg12" else ""} \
      ~{if (propose_j_two_k_lossless) then "--propose-j2k-lossless" else ""} \
      ~{if (propose_j_two_k_lossy) then "--propose-j2k-lossy" else ""} \
      ~{if (propose_jls_lossless) then "--propose-jls-lossless" else ""} \
      ~{if (propose_jls_lossy) then "--propose-jls-lossy" else ""} \
      ~{if (propose_mpeg_two) then "--propose-mpeg2" else ""} \
      ~{if (propose_mpeg_two_high) then "--propose-mpeg2-high" else ""} \
      ~{if (propose_mpeg_four) then "--propose-mpeg4" else ""} \
      ~{if (propose_mpeg_four_bd) then "--propose-mpeg4-bd" else ""} \
      ~{if (propose_mpeg_four_two_two_d) then "--propose-mpeg4-2-2d" else ""} \
      ~{if (propose_mpeg_four_two_three_d) then "--propose-mpeg4-2-3d" else ""} \
      ~{if (propose_mpeg_four_two_st) then "--propose-mpeg4-2-st" else ""} \
      ~{if (propose_he_vc) then "--propose-hevc" else ""} \
      ~{if (propose_he_vc_one_zero) then "--propose-hevc10" else ""} \
      ~{if (propose_rle) then "--propose-rle" else ""} \
      ~{if (propose_deflated) then "--propose-deflated" else ""} \
      ~{if (required) then "--required" else ""} \
      ~{if (disable_new_vr) then "--disable-new-vr" else ""} \
      ~{if (user) then "--user" else ""} \
      ~{if (password) then "--password" else ""} \
      ~{if (empty_password) then "--empty-password" else ""} \
      ~{if (kerberos) then "--kerberos" else ""} \
      ~{if (saml) then "--saml" else ""} \
      ~{if (jwt) then "--jwt" else ""} \
      ~{if (pos_response) then "--pos-response" else ""} \
      ~{if (timeout) then "--timeout" else ""} \
      ~{if (socket_timeout) then "--socket-timeout" else ""} \
      ~{if (acse_timeout) then "--acse-timeout" else ""} \
      ~{if (dim_se_timeout) then "--dimse-timeout" else ""} \
      ~{if (max_pdu) then "--max-pdu" else ""} \
      ~{if (max_send_pdu) then "--max-send-pdu" else ""} \
      ~{if (repeat) then "--repeat" else ""} \
      ~{if (abort) then "--abort" else ""} \
      ~{if (no_halt) then "--no-halt" else ""} \
      ~{if (uid_padding) then "--uid-padding" else ""} \
      ~{if (disable_tls) then "--disable-tls" else ""} \
      ~{if (null_passwd) then "--null-passwd" else ""} \
      ~{if (pem_keys) then "--pem-keys" else ""} \
      ~{if (der_keys) then "--der-keys" else ""} \
      ~{if (require_peer_cert) then "--require-peer-cert" else ""} \
      ~{if (ignore_peer_cert) then "--ignore-peer-cert" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0"
  }
  parameter_meta {
    arguments: "print expanded command line arguments"
    quiet: "quiet mode, print no warnings and errors"
    verbose: "verbose mode, print processing details"
    debug: "debug mode, print debug information"
    log_level: "[l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    log_config: "[f]ilename: string\\nuse config file f for the logger"
    read_dataset: "read data set without file meta information"
    no_recurse: "do not recurse within directories (default)"
    no_rename: "do not rename processed files (default)"
    ae_title: "[a]etitle: string\\nset my calling AE title (default: STORESCU)"
    etitle_stringset_called: "[a]etitle: string\\nset called AE title of peer (default: ANY-SCP)"
    config_file: "[f]ilename, [p]rofile: string\\nuse profile p from config file f"
    _proposeuncompr_propose: "=   --propose-uncompr       propose all uncompressed TS, explicit VR\\nwith local byte ordering first (default)"
    propose_little: "propose all uncompressed TS, explicit VR\\nlittle endian first"
    propose_big: "propose all uncompressed TS, explicit VR\\nbig endian first"
    propose_implicit: "propose implicit VR little endian TS only"
    propose_lossless: "propose default JPEG lossless TS\\nand all uncompressed transfer syntaxes"
    propose_jpeg_eight: "propose default JPEG lossy TS for 8 bit data\\nand all uncompressed transfer syntaxes"
    propose_jpeg_one_two: "propose default JPEG lossy TS for 12 bit data\\nand all uncompressed transfer syntaxes"
    propose_j_two_k_lossless: "propose JPEG 2000 lossless TS\\nand all uncompressed transfer syntaxes"
    propose_j_two_k_lossy: "propose JPEG 2000 lossy TS\\nand all uncompressed transfer syntaxes"
    propose_jls_lossless: "propose JPEG-LS lossless TS\\nand all uncompressed transfer syntaxes"
    propose_jls_lossy: "propose JPEG-LS lossy TS\\nand all uncompressed transfer syntaxes"
    propose_mpeg_two: "propose MPEG2 Main Profile @ Main Level TS"
    propose_mpeg_two_high: "propose MPEG2 Main Profile @ High Level TS"
    propose_mpeg_four: "propose MPEG4 AVC/H.264 HP / Level 4.1 TS"
    propose_mpeg_four_bd: "propose MPEG4 AVC/H.264 BD-compatible TS"
    propose_mpeg_four_two_two_d: "propose MPEG4 AVC/H.264 HP / Level 4.2 TS (2D)"
    propose_mpeg_four_two_three_d: "propose MPEG4 AVC/H.264 HP / Level 4.2 TS (3D)"
    propose_mpeg_four_two_st: "propose MPEG4 AVC/H.264 Stereo / Level 4.2 TS"
    propose_he_vc: "propose HEVC/H.265 Main Profile / Level 5.1 TS"
    propose_he_vc_one_zero: "propose HEVC/H.265 Main 10 Profile / Level 5.1 TS"
    propose_rle: "propose RLE lossless TS\\nand all uncompressed transfer syntaxes"
    propose_deflated: "propose deflated expl. VR little endian TS\\nand all uncompressed transfer syntaxes"
    required: "propose only required presentation contexts\\n(default: propose all supported)"
    disable_new_vr: "disable support for new VRs, convert to OB"
    user: "[u]ser name: string\\nauthenticate using user name u"
    password: "[p]assword: string (only with --user)\\nauthenticate using password p"
    empty_password: "send empty password (only with --user)"
    kerberos: "[f]ilename: string\\nread kerberos ticket from file f"
    saml: "[f]ilename: string\\nread SAML request from file f"
    jwt: "[f]ilename: string\\nread JWT data from file f"
    pos_response: "expect positive response"
    timeout: "[s]econds: integer (default: unlimited)\\ntimeout for connection requests"
    socket_timeout: "[s]econds: integer (default: 60)\\ntimeout for network socket (0 for none)"
    acse_timeout: "[s]econds: integer (default: 30)\\ntimeout for ACSE messages"
    dim_se_timeout: "[s]econds: integer (default: unlimited)\\ntimeout for DIMSE messages"
    max_pdu: "[n]umber of bytes: integer (4096..131072)\\nset max receive pdu to n bytes (default: 16384)"
    max_send_pdu: "[n]umber of bytes: integer (4096..131072)\\nrestrict max send pdu to n bytes"
    repeat: "[n]umber: integer\\nrepeat n times"
    abort: "abort association instead of releasing it"
    no_halt: "do not halt if unsuccessful store encountered\\n(default: do halt)"
    uid_padding: "silently correct space-padded UIDs"
    disable_tls: "use normal TCP/IP connection (default)"
    null_passwd: "use empty string as password"
    pem_keys: "read keys and certificates as PEM file (default)"
    der_keys: "read keys and certificates as DER file"
    require_peer_cert: "verify peer certificate, fail if absent (default)"
    ignore_peer_cert: "don't verify peer certificate"
    peer: "hostname of DICOM peer"
    port: "tcp/ip port number of peer"
    dcm_file_in: "DICOM file or directory to be transmitted"
    sent: "+IR   --invent-series      [n]umber: integer (implies --invent-instance)"
    use_specified_password: "use specified password"
  }
  output {
    File out_stdout = stdout()
  }
}