version 1.0

task Findscu {
  input {
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? log_level
    Boolean? log_config
    Boolean? key
    Boolean? work_list
    Boolean? patient
    Boolean? study
    Boolean? ps_only
    Boolean? ae_title
    Boolean? etitle_stringset_called
    Boolean? disable_new_vr
    Boolean? _proposeuncompr_propose
    Boolean? propose_little
    Boolean? propose_big
    Boolean? propose_deflated
    Boolean? propose_implicit
    Boolean? timeout
    Boolean? acse_timeout
    Boolean? dim_se_timeout
    Boolean? max_pdu
    Boolean? repeat
    Boolean? abort
    Boolean? cancel
    Boolean? disable_tls
    Boolean? null_passwd
    Boolean? pem_keys
    Boolean? der_keys
    Boolean? require_peer_cert
    Boolean? verify_peer_cert
    Boolean? ignore_peer_cert
    Directory? output_directory
    Boolean? disable_correction
    Boolean? hide_responses
    Boolean? extract
    String peer
    String port
    String dcm_file_in
    String use_specified_password
  }
  command <<<
    findscu \
      ~{peer} \
      ~{port} \
      ~{dcm_file_in} \
      ~{use_specified_password} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (key) then "--key" else ""} \
      ~{if (work_list) then "--worklist" else ""} \
      ~{if (patient) then "--patient" else ""} \
      ~{if (study) then "--study" else ""} \
      ~{if (ps_only) then "--psonly" else ""} \
      ~{if (ae_title) then "--aetitle" else ""} \
      ~{if (etitle_stringset_called) then "--call" else ""} \
      ~{if (disable_new_vr) then "--disable-new-vr" else ""} \
      ~{if (_proposeuncompr_propose) then "-x" else ""} \
      ~{if (propose_little) then "--propose-little" else ""} \
      ~{if (propose_big) then "--propose-big" else ""} \
      ~{if (propose_deflated) then "--propose-deflated" else ""} \
      ~{if (propose_implicit) then "--propose-implicit" else ""} \
      ~{if (timeout) then "--timeout" else ""} \
      ~{if (acse_timeout) then "--acse-timeout" else ""} \
      ~{if (dim_se_timeout) then "--dimse-timeout" else ""} \
      ~{if (max_pdu) then "--max-pdu" else ""} \
      ~{if (repeat) then "--repeat" else ""} \
      ~{if (abort) then "--abort" else ""} \
      ~{if (cancel) then "--cancel" else ""} \
      ~{if (disable_tls) then "--disable-tls" else ""} \
      ~{if (null_passwd) then "--null-passwd" else ""} \
      ~{if (pem_keys) then "--pem-keys" else ""} \
      ~{if (der_keys) then "--der-keys" else ""} \
      ~{if (require_peer_cert) then "--require-peer-cert" else ""} \
      ~{if (verify_peer_cert) then "--verify-peer-cert" else ""} \
      ~{if (ignore_peer_cert) then "--ignore-peer-cert" else ""} \
      ~{if (output_directory) then "--output-directory" else ""} \
      ~{if (disable_correction) then "--disable-correction" else ""} \
      ~{if (hide_responses) then "--hide-responses" else ""} \
      ~{if (extract) then "--extract" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arguments: "print expanded command line arguments"
    quiet: "quiet mode, print no warnings and errors"
    verbose: "verbose mode, print processing details"
    debug: "debug mode, print debug information"
    log_level: "[l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    log_config: "[f]ilename: string\\nuse config file f for the logger"
    key: "[k]ey: gggg,eeee=\\\"str\\\", path or dict. name=\\\"str\\\"\\noverride matching key"
    work_list: "use modality worklist information model (def.)"
    patient: "use patient root information model"
    study: "use study root information model"
    ps_only: "use patient/study only information model"
    ae_title: "[a]etitle: string\\nset my calling AE title (default: FINDSCU)"
    etitle_stringset_called: "[a]etitle: string\\nset called AE title of peer (default: ANY-SCP)"
    disable_new_vr: "disable support for new VRs, convert to OB"
    _proposeuncompr_propose: "=   --propose-uncompr     propose all uncompressed TS, explicit VR\\nwith local byte ordering first (default)"
    propose_little: "propose all uncompressed TS, explicit VR\\nlittle endian first"
    propose_big: "propose all uncompressed TS, explicit VR\\nbig endian first"
    propose_deflated: "propose deflated explicit VR little endian TS\\nand all uncompressed transfer syntaxes"
    propose_implicit: "propose implicit VR little endian TS only"
    timeout: "[s]econds: integer (default: unlimited)\\ntimeout for connection requests"
    acse_timeout: "[s]econds: integer (default: 30)\\ntimeout for ACSE messages"
    dim_se_timeout: "[s]econds: integer (default: unlimited)\\ntimeout for DIMSE messages"
    max_pdu: "[n]umber of bytes: integer (4096..131072)\\nset max receive pdu to n bytes (default: 16384)"
    repeat: "[n]umber: integer\\nrepeat n times"
    abort: "abort association instead of releasing it"
    cancel: "[n]umber: integer\\ncancel after n responses (default: never)"
    disable_tls: "use normal TCP/IP connection (default)"
    null_passwd: "use empty string as password"
    pem_keys: "read keys and certificates as PEM file (default)"
    der_keys: "read keys and certificates as DER file"
    require_peer_cert: "verify peer certificate, fail if absent (def.)"
    verify_peer_cert: "verify peer certificate if present"
    ignore_peer_cert: "don't verify peer certificate"
    output_directory: "[d]irectory: string (default: \\\".\\\")\\nwrite output files to existing directory d"
    disable_correction: "disable automatic data correction (default)"
    hide_responses: "do not output responses to the logger"
    extract: "extract responses to file (rsp0001.dcm, ...)"
    peer: "hostname of DICOM peer"
    port: "tcp/ip port number of peer"
    dcm_file_in: "DICOM query file(s)"
    use_specified_password: "use specified password"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}