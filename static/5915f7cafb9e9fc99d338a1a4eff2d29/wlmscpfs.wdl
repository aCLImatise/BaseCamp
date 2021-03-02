version 1.0

task Wlmscpfs {
  input {
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? log_level
    Boolean? log_config
    Boolean? single_process
    Boolean? fork
    Boolean? data_files_path
    Boolean? enable_file_reject
    Boolean? disable_file_reject
    Boolean? return_no_char_set
    Boolean? return_iso_ir_one_zero_zero
    Boolean? keep_char_set
    Boolean? no_sq_expansion
    Boolean? disable_new_vr
    Boolean? acse_timeout
    Boolean? dim_se_timeout
    Boolean? max_associations
    Boolean? refuse
    Boolean? reject
    Boolean? no_fail
    Boolean? sleep_after
    Boolean? sleep_during
    Boolean? max_pdu
    Boolean? disable_host_lookup
    String port
  }
  command <<<
    wlmscpfs \
      ~{port} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (single_process) then "--single-process" else ""} \
      ~{if (fork) then "--fork" else ""} \
      ~{if (data_files_path) then "--data-files-path" else ""} \
      ~{if (enable_file_reject) then "--enable-file-reject" else ""} \
      ~{if (disable_file_reject) then "--disable-file-reject" else ""} \
      ~{if (return_no_char_set) then "--return-no-char-set" else ""} \
      ~{if (return_iso_ir_one_zero_zero) then "--return-iso-ir-100" else ""} \
      ~{if (keep_char_set) then "--keep-char-set" else ""} \
      ~{if (no_sq_expansion) then "--no-sq-expansion" else ""} \
      ~{if (disable_new_vr) then "--disable-new-vr" else ""} \
      ~{if (acse_timeout) then "--acse-timeout" else ""} \
      ~{if (dim_se_timeout) then "--dimse-timeout" else ""} \
      ~{if (max_associations) then "--max-associations" else ""} \
      ~{if (refuse) then "--refuse" else ""} \
      ~{if (reject) then "--reject" else ""} \
      ~{if (no_fail) then "--no-fail" else ""} \
      ~{if (sleep_after) then "--sleep-after" else ""} \
      ~{if (sleep_during) then "--sleep-during" else ""} \
      ~{if (max_pdu) then "--max-pdu" else ""} \
      ~{if (disable_host_lookup) then "--disable-host-lookup" else ""}
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
    single_process: "single process mode"
    fork: "fork child process for each association (def.)"
    data_files_path: "[p]ath: string (default: /home/www/wlist)\\npath to worklist data files"
    enable_file_reject: "enable rejection of incomplete worklist files\\n(default)"
    disable_file_reject: "disable rejection of incomplete worklist files"
    return_no_char_set: "return no specific character set (default)"
    return_iso_ir_one_zero_zero: "return specific character set ISO IR 100"
    keep_char_set: "return character set provided in file"
    no_sq_expansion: "disable expansion of empty sequences in C-FIND\\nrequest messages"
    disable_new_vr: "disable support for new VRs, convert to OB"
    acse_timeout: "[s]econds: integer (default: 30)\\ntimeout for ACSE messages"
    dim_se_timeout: "[s]econds: integer (default: unlimited)\\ntimeout for DIMSE messages"
    max_associations: "[a]ssocs: integer (default: 50)\\nlimit maximum number of parallel associations"
    refuse: "refuse association"
    reject: "reject association if no implement. class UID"
    no_fail: "don't fail on an invalid query"
    sleep_after: "[s]econds: integer\\nsleep s seconds after find (default: 0)"
    sleep_during: "[s]econds: integer\\nsleep s seconds during find (default: 0)"
    max_pdu: "[n]umber of bytes: integer (4096..131072)\\nset max receive pdu to n bytes (default: 16384)"
    disable_host_lookup: "disable hostname lookup"
    port: "tcp/ip port number to listen on"
  }
  output {
    File out_stdout = stdout()
  }
}