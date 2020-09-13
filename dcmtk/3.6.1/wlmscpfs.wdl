version 1.0

task Wlmscpfs {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? ll
    Boolean? lc
    Boolean? _singleprocess_single
    Boolean? fork
    Boolean? data_files_path
    Boolean? enable_file_reject
    Boolean? disable_file_reject
    Boolean? return_no_char_set
    Boolean? return_iso_ir_one_zero_zero
    Boolean? keep_char_set
    Boolean? no_sq_expansion
    Boolean? _disablenewvr_disable
    Boolean? ta
    Boolean? td
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
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (ll) then "-ll" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if (_singleprocess_single) then "-s" else ""} \
      ~{if (fork) then "--fork" else ""} \
      ~{if (data_files_path) then "--data-files-path" else ""} \
      ~{if (enable_file_reject) then "--enable-file-reject" else ""} \
      ~{if (disable_file_reject) then "--disable-file-reject" else ""} \
      ~{if (return_no_char_set) then "--return-no-char-set" else ""} \
      ~{if (return_iso_ir_one_zero_zero) then "--return-iso-ir-100" else ""} \
      ~{if (keep_char_set) then "--keep-char-set" else ""} \
      ~{if (no_sq_expansion) then "--no-sq-expansion" else ""} \
      ~{if (_disablenewvr_disable) then "-u" else ""} \
      ~{if (ta) then "-ta" else ""} \
      ~{if (td) then "-td" else ""} \
      ~{if (max_associations) then "--max-associations" else ""} \
      ~{if (refuse) then "--refuse" else ""} \
      ~{if (reject) then "--reject" else ""} \
      ~{if (no_fail) then "--no-fail" else ""} \
      ~{if (sleep_after) then "--sleep-after" else ""} \
      ~{if (sleep_during) then "--sleep-during" else ""} \
      ~{if (max_pdu) then "--max-pdu" else ""} \
      ~{if (disable_host_lookup) then "--disable-host-lookup" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet                quiet mode, print no warnings and errors"
    _verbose_details: "--verbose              verbose mode, print processing details"
    _debug_information: "--debug                debug mode, print debug information"
    ll: "--log-level            [l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    lc: "--log-config           [f]ilename: string\\nuse config file f for the logger"
    _singleprocess_single: "--single-process       single process mode"
    fork: "fork child process for each association (def.)"
    data_files_path: "[p]ath: string (default: /home/www/wlist)\\npath to worklist data files"
    enable_file_reject: "enable rejection of incomplete worklist files\\n(default)"
    disable_file_reject: "disable rejection of incomplete worklist files"
    return_no_char_set: "return no specific character set (default)"
    return_iso_ir_one_zero_zero: "return specific character set ISO IR 100"
    keep_char_set: "return character set provided in file"
    no_sq_expansion: "disable expansion of empty sequences in C-FIND\\nrequest messages"
    _disablenewvr_disable: "--disable-new-vr       disable support for new VRs, convert to OB"
    ta: "--acse-timeout         [s]econds: integer (default: 30)\\ntimeout for ACSE messages"
    td: "--dimse-timeout        [s]econds: integer (default: unlimited)\\ntimeout for DIMSE messages"
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