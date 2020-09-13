version 1.0

task Dcmsend {
  input {
    Boolean? list_decoders
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? ll
    Boolean? lc
    Boolean? _readdataset_read
    Boolean? _norecurse_recurse
    Boolean? dn
    Boolean? nh
    Boolean? no_illegal_proposal
    Boolean? no_uid_checks
    Boolean? ae_title
    Boolean? etitle_stringset_called
    Boolean? ma
    Boolean? to
    Boolean? ta
    Boolean? td
    Boolean? max_pdu
    Boolean? max_send_pdu
    String peer
    String port
    String dcm_file_in
  }
  command <<<
    dcmsend \
      ~{peer} \
      ~{port} \
      ~{dcm_file_in} \
      ~{if (list_decoders) then "--list-decoders" else ""} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (ll) then "-ll" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if (_readdataset_read) then "-f" else ""} \
      ~{if (_norecurse_recurse) then "-r" else ""} \
      ~{if (dn) then "-dn" else ""} \
      ~{if (nh) then "-nh" else ""} \
      ~{if (no_illegal_proposal) then "--no-illegal-proposal" else ""} \
      ~{if (no_uid_checks) then "--no-uid-checks" else ""} \
      ~{if (ae_title) then "--aetitle" else ""} \
      ~{if (etitle_stringset_called) then "--call" else ""} \
      ~{if (ma) then "-ma" else ""} \
      ~{if (to) then "-to" else ""} \
      ~{if (ta) then "-ta" else ""} \
      ~{if (td) then "-td" else ""} \
      ~{if (max_pdu) then "--max-pdu" else ""} \
      ~{if (max_send_pdu) then "--max-send-pdu" else ""}
  >>>
  parameter_meta {
    list_decoders: "list transfer syntaxes of decoders and exit"
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet                quiet mode, print no warnings and errors"
    _verbose_details: "--verbose              verbose mode, print processing details"
    _debug_information: "--debug                debug mode, print debug information"
    ll: "--log-level            [l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    lc: "--log-config           [f]ilename: string\\nuse config file f for the logger"
    _readdataset_read: "--read-dataset         read data set without file meta information"
    _norecurse_recurse: "--no-recurse           do not recurse within directories (default)"
    dn: "--decompress-never     never decompress compressed data sets"
    nh: "--no-halt              do not halt on first invalid input file\\nor if unsuccessful store encountered"
    no_illegal_proposal: "do not propose any presentation context that\\ndoes not contain the default TS (if needed)"
    no_uid_checks: "do not check UID values of input files"
    ae_title: "[a]etitle: string\\nset my calling AE title (default: DCMSEND)"
    etitle_stringset_called: "[a]etitle: string\\nset called AE title of peer (default: ANY-SCP)"
    ma: "--single-association   always use a single association"
    to: "--timeout              [s]econds: integer (default: unlimited)\\ntimeout for connection requests"
    ta: "--acse-timeout         [s]econds: integer (default: 30)\\ntimeout for ACSE messages"
    td: "--dimse-timeout        [s]econds: integer (default: unlimited)\\ntimeout for DIMSE messages"
    max_pdu: "[n]umber of bytes: integer (4096..131072)\\nset max receive pdu to n bytes (default: 16384)"
    max_send_pdu: "[n]umber of bytes: integer (4096..131072)\\nrestrict max send pdu to n bytes"
    peer: "hostname of DICOM peer"
    port: "tcp/ip port number of peer"
    dcm_file_in: "DICOM file or directory to be transmitted"
  }
  output {
    File out_stdout = stdout()
  }
}