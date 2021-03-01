version 1.0

task Storescp {
  input {
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? log_level
    Boolean? log_config
    Boolean? single_process
    Boolean? fork
    Boolean? config_file
    Boolean? inetd
    Boolean? acse_timeout
    Boolean? dim_se_timeout
    Boolean? ae_title
    Boolean? max_pdu
    Boolean? disable_host_lookup
    Boolean? refuse
    Boolean? reject
    Boolean? ignore
    Boolean? sleep_after
    Boolean? sleep_during
    Boolean? abort_after
    Boolean? abort_during
    Boolean? promiscuous
    Boolean? uid_padding
    Boolean? disable_tls
    Boolean? null_passwd
    Boolean? pem_keys
    Boolean? der_keys
    Boolean? require_peer_cert
    Boolean? verify_peer_cert
    Boolean? ignore_peer_cert
    Directory? output_directory
    Boolean? normal
    Boolean? write_dataset
    Boolean? disable_new_vr
    Boolean? group_length_remove
    Boolean? length_undefined
    Boolean? padding_off
    Boolean? sort_conc_studies
    Boolean? sort_on_study_uid
    Boolean? sort_on_patient_name
    Boolean? default_filenames
    Boolean? time_names
    Boolean? filename_extension
    Boolean? exec_on_reception
    Boolean? exec_on_eo_study
    Boolean? rename_on_eo_study
    Boolean? eo_study_timeout
    Boolean? exec_sync
    String port
    String use_specified_password
  }
  command <<<
    storescp \
      ~{port} \
      ~{use_specified_password} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (single_process) then "--single-process" else ""} \
      ~{if (fork) then "--fork" else ""} \
      ~{if (config_file) then "--config-file" else ""} \
      ~{if (inetd) then "--inetd" else ""} \
      ~{if (acse_timeout) then "--acse-timeout" else ""} \
      ~{if (dim_se_timeout) then "--dimse-timeout" else ""} \
      ~{if (ae_title) then "--aetitle" else ""} \
      ~{if (max_pdu) then "--max-pdu" else ""} \
      ~{if (disable_host_lookup) then "--disable-host-lookup" else ""} \
      ~{if (refuse) then "--refuse" else ""} \
      ~{if (reject) then "--reject" else ""} \
      ~{if (ignore) then "--ignore" else ""} \
      ~{if (sleep_after) then "--sleep-after" else ""} \
      ~{if (sleep_during) then "--sleep-during" else ""} \
      ~{if (abort_after) then "--abort-after" else ""} \
      ~{if (abort_during) then "--abort-during" else ""} \
      ~{if (promiscuous) then "--promiscuous" else ""} \
      ~{if (uid_padding) then "--uid-padding" else ""} \
      ~{if (disable_tls) then "--disable-tls" else ""} \
      ~{if (null_passwd) then "--null-passwd" else ""} \
      ~{if (pem_keys) then "--pem-keys" else ""} \
      ~{if (der_keys) then "--der-keys" else ""} \
      ~{if (require_peer_cert) then "--require-peer-cert" else ""} \
      ~{if (verify_peer_cert) then "--verify-peer-cert" else ""} \
      ~{if (ignore_peer_cert) then "--ignore-peer-cert" else ""} \
      ~{if (output_directory) then "--output-directory" else ""} \
      ~{if (normal) then "--normal" else ""} \
      ~{if (write_dataset) then "--write-dataset" else ""} \
      ~{if (disable_new_vr) then "--disable-new-vr" else ""} \
      ~{if (group_length_remove) then "--group-length-remove" else ""} \
      ~{if (length_undefined) then "--length-undefined" else ""} \
      ~{if (padding_off) then "--padding-off" else ""} \
      ~{if (sort_conc_studies) then "--sort-conc-studies" else ""} \
      ~{if (sort_on_study_uid) then "--sort-on-study-uid" else ""} \
      ~{if (sort_on_patient_name) then "--sort-on-patientname" else ""} \
      ~{if (default_filenames) then "--default-filenames" else ""} \
      ~{if (time_names) then "--timenames" else ""} \
      ~{if (filename_extension) then "--filename-extension" else ""} \
      ~{if (exec_on_reception) then "--exec-on-reception" else ""} \
      ~{if (exec_on_eo_study) then "--exec-on-eostudy" else ""} \
      ~{if (rename_on_eo_study) then "--rename-on-eostudy" else ""} \
      ~{if (eo_study_timeout) then "--eostudy-timeout" else ""} \
      ~{if (exec_sync) then "--exec-sync" else ""}
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
    single_process: "single process mode (default)"
    fork: "fork child process for each association"
    config_file: "[f]ilename, [p]rofile: string\\nuse profile p from config file f"
    inetd: "run from inetd super server (not with --fork)"
    acse_timeout: "[s]econds: integer (default: 30)\\ntimeout for ACSE messages"
    dim_se_timeout: "[s]econds: integer (default: unlimited)\\ntimeout for DIMSE messages"
    ae_title: "[a]etitle: string\\nset my AE title (default: STORESCP)"
    max_pdu: "[n]umber of bytes: integer (4096..131072)\\nset max receive pdu to n bytes (def.: 16384)"
    disable_host_lookup: "disable hostname lookup"
    refuse: "refuse association"
    reject: "reject association if no implement. class UID"
    ignore: "ignore store data, receive but do not store"
    sleep_after: "[s]econds: integer\\nsleep s seconds after store (default: 0)"
    sleep_during: "[s]econds: integer\\nsleep s seconds during store (default: 0)"
    abort_after: "abort association after receipt of C-STORE-RQ\\n(but before sending response)"
    abort_during: "abort association during receipt of C-STORE-RQ"
    promiscuous: "promiscuous mode, accept unknown SOP classes\\n(not with --config-file)"
    uid_padding: "silently correct space-padded UIDs"
    disable_tls: "use normal TCP/IP connection (default)"
    null_passwd: "use empty string as password"
    pem_keys: "read keys and certificates as PEM file (def.)"
    der_keys: "read keys and certificates as DER file"
    require_peer_cert: "verify peer certificate, fail if absent (def.)"
    verify_peer_cert: "verify peer certificate if present"
    ignore_peer_cert: "don't verify peer certificate"
    output_directory: "[d]irectory: string (default: \\\".\\\")\\nwrite received objects to existing directory d"
    normal: "allow implicit format conversions (default)"
    write_dataset: "write data set without file meta information"
    disable_new_vr: "disable support for new VRs, convert to OB"
    group_length_remove: "always write without group length elements"
    length_undefined: "write with undefined lengths"
    padding_off: "no padding (default)"
    sort_conc_studies: "[p]refix: string\\nsort studies using prefix p and a timestamp"
    sort_on_study_uid: "[p]refix: string\\nsort studies using prefix p and the Study\\nInstance UID"
    sort_on_patient_name: "sort studies using the Patient's Name and\\na timestamp"
    default_filenames: "generate filename from instance UID (default)"
    time_names: "generate filename from creation time"
    filename_extension: "[e]xtension: string\\nappend e to all filenames"
    exec_on_reception: "[c]ommand: string\\nexecute command c after having received and\\nprocessed one C-STORE-RQ message"
    exec_on_eo_study: "[c]ommand: string\\nexecute command c after having received and\\nprocessed all C-STORE-RQ messages that belong\\nto one study"
    rename_on_eo_study: "having received and processed all C-STORE-RQ\\nmessages that belong to one study, rename\\noutput files according to certain pattern"
    eo_study_timeout: "[t]imeout: integer\\nspecifies a timeout of t seconds for\\nend-of-study determination"
    exec_sync: "execute command synchronously in foreground"
    port: "tcp/ip port number to listen on"
    use_specified_password: "use specified password"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}