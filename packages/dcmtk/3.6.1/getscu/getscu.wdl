version 1.0

task Getscu {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? ll
    Boolean? lc
    Boolean? _key_ggggeeeeoverride
    Boolean? _patient_use
    Boolean? _study_model
    Boolean? _psonly_use
    Boolean? ae_title
    Boolean? etitle_stringset_called
    Boolean? _proposeuncompr_propose
    Boolean? xe
    Boolean? xb
    Boolean? xd
    Boolean? xi
    Boolean? to
    Boolean? ta
    Boolean? td
    Boolean? max_pdu
    Boolean? repeat
    Boolean? abort
    Directory? od
    Boolean? _normal_receive
    Boolean? ignore
    String peer
    String port
    String dcm_file_in
  }
  command <<<
    getscu \
      ~{peer} \
      ~{port} \
      ~{dcm_file_in} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (ll) then "-ll" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if (_key_ggggeeeeoverride) then "-k" else ""} \
      ~{if (_patient_use) then "-P" else ""} \
      ~{if (_study_model) then "-S" else ""} \
      ~{if (_psonly_use) then "-O" else ""} \
      ~{if (ae_title) then "--aetitle" else ""} \
      ~{if (etitle_stringset_called) then "--call" else ""} \
      ~{if (_proposeuncompr_propose) then "-x" else ""} \
      ~{if (xe) then "-xe" else ""} \
      ~{if (xb) then "-xb" else ""} \
      ~{if (xd) then "-xd" else ""} \
      ~{if (xi) then "-xi" else ""} \
      ~{if (to) then "-to" else ""} \
      ~{if (ta) then "-ta" else ""} \
      ~{if (td) then "-td" else ""} \
      ~{if (max_pdu) then "--max-pdu" else ""} \
      ~{if (repeat) then "--repeat" else ""} \
      ~{if (abort) then "--abort" else ""} \
      ~{if (od) then "-od" else ""} \
      ~{if (_normal_receive) then "-B" else ""} \
      ~{if (ignore) then "--ignore" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet                quiet mode, print no warnings and errors"
    _verbose_details: "--verbose              verbose mode, print processing details"
    _debug_information: "--debug                debug mode, print debug information"
    ll: "--log-level            [l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    lc: "--log-config           [f]ilename: string\\nuse config file f for the logger"
    _key_ggggeeeeoverride: "--key                  [k]ey: gggg,eeee=\\\"str\\\", path or dic. name=\\\"str\\\"\\noverride matching key"
    _patient_use: "--patient              use patient root information model (default)"
    _study_model: "--study                use study root information model"
    _psonly_use: "--psonly               use patient/study only information model"
    ae_title: "[a]etitle: string\\nset my calling AE title (default: GETSCU)"
    etitle_stringset_called: "[a]etitle: string\\nset called AE title of peer (default: ANY-SCP)"
    _proposeuncompr_propose: "=   --propose-uncompr      propose all uncompressed TS, explicit VR\\nwith local byte ordering first (default)"
    xe: "--propose-little       propose all uncompressed TS, explicit VR\\nlittle endian first"
    xb: "--propose-big          propose all uncompressed TS, explicit VR\\nbig endian first"
    xd: "--propose-deflated     propose deflated explicit VR little endian TS\\nand all uncompressed transfer syntaxes"
    xi: "--propose-implicit     propose implicit VR little endian TS only"
    to: "--timeout              [s]econds: integer (default: unlimited)\\ntimeout for connection requests"
    ta: "--acse-timeout         [s]econds: integer (default: 30)\\ntimeout for ACSE messages"
    td: "--dimse-timeout        [s]econds: integer (default: unlimited)\\ntimeout for DIMSE messages"
    max_pdu: "[n]umber of bytes: integer (4096..131072)\\nset max receive pdu to n bytes (default: 16384)"
    repeat: "[n]umber: integer\\nrepeat n times"
    abort: "abort association instead of releasing it"
    od: "--output-directory     [d]irectory: string (default: \\\".\\\")\\nwrite received objects to existing directory d"
    _normal_receive: "--normal               receive in memory, then write to disk (default)"
    ignore: "ignore store data, receive but do not store"
    peer: "hostname of DICOM peer"
    port: "tcp/ip port number of peer"
    dcm_file_in: "DICOM query file(s)"
  }
  output {
    File out_stdout = stdout()
    Directory out_od = "${in_od}"
  }
}