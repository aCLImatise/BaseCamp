version 1.0

task Findscu {
  input {
    Boolean? _quiet_print
    Boolean? _verbose_verbose
    Boolean? _debug_debug
    Boolean? ll
    Boolean? lc
    Boolean? _key_ggggeeee
    Boolean? _worklist_use
    Boolean? _patient_use
    Boolean? _study_use
    Boolean? _psonly_use
    Boolean? ae_title
    Boolean? etitle_string_set_called
    Boolean? _disablenewvr_disable
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
    Boolean? cancel
    Boolean? pw
    Boolean? pem_keys
    Boolean? der_keys
    Boolean? rc
    Boolean? vc
    Boolean? ic
    Boolean? od
    Boolean? dc
    Boolean? sr
    Boolean? _extract_extract
    String peer
    String port
    String dcm_file_in
  }
  command <<<
    findscu \
      ~{peer} \
      ~{port} \
      ~{dcm_file_in} \
      ~{true="-q" false="" _quiet_print} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="-ll" false="" ll} \
      ~{true="-lc" false="" lc} \
      ~{true="-k" false="" _key_ggggeeee} \
      ~{true="-W" false="" _worklist_use} \
      ~{true="-P" false="" _patient_use} \
      ~{true="-S" false="" _study_use} \
      ~{true="-O" false="" _psonly_use} \
      ~{true="--aetitle" false="" ae_title} \
      ~{true="--call" false="" etitle_string_set_called} \
      ~{true="-u" false="" _disablenewvr_disable} \
      ~{true="-x" false="" _proposeuncompr_propose} \
      ~{true="-xe" false="" xe} \
      ~{true="-xb" false="" xb} \
      ~{true="-xd" false="" xd} \
      ~{true="-xi" false="" xi} \
      ~{true="-to" false="" to} \
      ~{true="-ta" false="" ta} \
      ~{true="-td" false="" td} \
      ~{true="--max-pdu" false="" max_pdu} \
      ~{true="--repeat" false="" repeat} \
      ~{true="--abort" false="" abort} \
      ~{true="--cancel" false="" cancel} \
      ~{true="-pw" false="" pw} \
      ~{true="--pem-keys" false="" pem_keys} \
      ~{true="--der-keys" false="" der_keys} \
      ~{true="-rc" false="" rc} \
      ~{true="-vc" false="" vc} \
      ~{true="-ic" false="" ic} \
      ~{true="-od" false="" od} \
      ~{true="-dc" false="" dc} \
      ~{true="-sr" false="" sr} \
      ~{true="-X" false="" _extract_extract}
  >>>
  parameter_meta {
    _quiet_print: "--quiet               quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose             verbose mode, print processing details"
    _debug_debug: "--debug               debug mode, print debug information"
    ll: "--log-level           [l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    lc: "--log-config          [f]ilename: string use config file f for the logger"
    _key_ggggeeee: "--key                 [k]ey: gggg,eeee=\"str\", path or dict. name=\"str\" override matching key"
    _worklist_use: "--worklist            use modality worklist information model (def.)"
    _patient_use: "--patient             use patient root information model"
    _study_use: "--study               use study root information model"
    _psonly_use: "--psonly              use patient/study only information model"
    ae_title: "[a]etitle: string set my calling AE title (default: FINDSCU)"
    etitle_string_set_called: "[a]etitle: string set called AE title of peer (default: ANY-SCP)"
    _disablenewvr_disable: "--disable-new-vr      disable support for new VRs, convert to OB"
    _proposeuncompr_propose: "=   --propose-uncompr     propose all uncompressed TS, explicit VR with local byte ordering first (default)"
    xe: "--propose-little      propose all uncompressed TS, explicit VR little endian first"
    xb: "--propose-big         propose all uncompressed TS, explicit VR big endian first"
    xd: "--propose-deflated    propose deflated explicit VR little endian TS and all uncompressed transfer syntaxes"
    xi: "--propose-implicit    propose implicit VR little endian TS only"
    to: "--timeout             [s]econds: integer (default: unlimited) timeout for connection requests"
    ta: "--acse-timeout        [s]econds: integer (default: 30) timeout for ACSE messages"
    td: "--dimse-timeout       [s]econds: integer (default: unlimited) timeout for DIMSE messages"
    max_pdu: "[n]umber of bytes: integer (4096..131072) set max receive pdu to n bytes (default: 16384)"
    repeat: "[n]umber: integer repeat n times"
    abort: "abort association instead of releasing it"
    cancel: "[n]umber: integer cancel after n responses (default: never)"
    pw: "--null-passwd         use empty string as password"
    pem_keys: "read keys and certificates as PEM file (default)"
    der_keys: "read keys and certificates as DER file"
    rc: "--require-peer-cert   verify peer certificate, fail if absent (def.)"
    vc: "--verify-peer-cert    verify peer certificate if present"
    ic: "--ignore-peer-cert    don't verify peer certificate"
    od: "--output-directory    [d]irectory: string (default: \".\") write output files to existing directory d"
    dc: "--disable-correction  disable automatic data correction (default)"
    sr: "--hide-responses      do not output responses to the logger"
    _extract_extract: "--extract             extract responses to file (rsp0001.dcm, ...)"
    peer: "hostname of DICOM peer"
    port: "tcp/ip port number of peer"
    dcm_file_in: "DICOM query file(s)"
  }
}