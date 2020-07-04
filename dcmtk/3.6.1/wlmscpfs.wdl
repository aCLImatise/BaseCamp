version 1.0

task Wlmscpfs {
  input {
    Boolean? _quiet_quiet
    Boolean? _verbose_verbose
    Boolean? _debug_debug
    Boolean? ll
    Boolean? lc
    Boolean? _singleprocess_single
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
    Boolean? max_pdu
    Boolean? disable_host_lookup
    String port
  }
  command <<<
    wlmscpfs \
      ~{port} \
      ~{true="-q" false="" _quiet_quiet} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="-ll" false="" ll} \
      ~{true="-lc" false="" lc} \
      ~{true="-s" false="" _singleprocess_single} \
      ~{true="--data-files-path" false="" data_files_path} \
      ~{true="--enable-file-reject" false="" enable_file_reject} \
      ~{true="--disable-file-reject" false="" disable_file_reject} \
      ~{true="--return-no-char-set" false="" return_no_char_set} \
      ~{true="--return-iso-ir-100" false="" return_iso_ir_one_zero_zero} \
      ~{true="--keep-char-set" false="" keep_char_set} \
      ~{true="--no-sq-expansion" false="" no_sq_expansion} \
      ~{true="-u" false="" _disablenewvr_disable} \
      ~{true="-ta" false="" ta} \
      ~{true="-td" false="" td} \
      ~{true="--max-pdu" false="" max_pdu} \
      ~{true="--disable-host-lookup" false="" disable_host_lookup}
  >>>
  parameter_meta {
    _quiet_quiet: "--quiet                quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose              verbose mode, print processing details"
    _debug_debug: "--debug                debug mode, print debug information"
    ll: "--log-level            [l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    lc: "--log-config           [f]ilename: string use config file f for the logger"
    _singleprocess_single: "--single-process       single process mode --fork                 fork child process for each association (def.)"
    data_files_path: "[p]ath: string (default: /home/www/wlist) path to worklist data files"
    enable_file_reject: "enable rejection of incomplete worklist files (default)"
    disable_file_reject: "disable rejection of incomplete worklist files"
    return_no_char_set: "return no specific character set (default)"
    return_iso_ir_one_zero_zero: "return specific character set ISO IR 100"
    keep_char_set: "return character set provided in file"
    no_sq_expansion: "disable expansion of empty sequences in C-FIND request messages"
    _disablenewvr_disable: "--disable-new-vr       disable support for new VRs, convert to OB"
    ta: "--acse-timeout         [s]econds: integer (default: 30) timeout for ACSE messages"
    td: "--dimse-timeout        [s]econds: integer (default: unlimited) timeout for DIMSE messages --max-associations     [a]ssocs: integer (default: 50) limit maximum number of parallel associations --refuse               refuse association --reject               reject association if no implement. class UID --no-fail              don't fail on an invalid query --sleep-after          [s]econds: integer sleep s seconds after find (default: 0) --sleep-during         [s]econds: integer sleep s seconds during find (default: 0)"
    max_pdu: "[n]umber of bytes: integer (4096..131072) set max receive pdu to n bytes (default: 16384)"
    disable_host_lookup: "disable hostname lookup"
    port: "tcp/ip port number to listen on"
  }
}