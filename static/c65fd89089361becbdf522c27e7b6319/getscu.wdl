version 1.0

task Getscu {
  input {
    Boolean? _key_ggggeeee
    Boolean? _patient_use
    Boolean? _study_use
    Boolean? _psonly_use
    Boolean? ae_title
    Boolean? etitle_string_set_called
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
    Boolean? od
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
      ~{true="-k" false="" _key_ggggeeee} \
      ~{true="-P" false="" _patient_use} \
      ~{true="-S" false="" _study_use} \
      ~{true="-O" false="" _psonly_use} \
      ~{true="--aetitle" false="" ae_title} \
      ~{true="--call" false="" etitle_string_set_called} \
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
      ~{true="-od" false="" od} \
      ~{true="--ignore" false="" ignore}
  >>>
  parameter_meta {
    _key_ggggeeee: "--key                  [k]ey: gggg,eeee=\"str\", path or dic. name=\"str\" override matching key"
    _patient_use: "--patient              use patient root information model (default)"
    _study_use: "--study                use study root information model"
    _psonly_use: "--psonly               use patient/study only information model"
    ae_title: "[a]etitle: string set my calling AE title (default: GETSCU)"
    etitle_string_set_called: "[a]etitle: string set called AE title of peer (default: ANY-SCP)"
    _proposeuncompr_propose: "=   --propose-uncompr      propose all uncompressed TS, explicit VR with local byte ordering first (default)"
    xe: "--propose-little       propose all uncompressed TS, explicit VR little endian first"
    xb: "--propose-big          propose all uncompressed TS, explicit VR big endian first"
    xd: "--propose-deflated     propose deflated explicit VR little endian TS and all uncompressed transfer syntaxes"
    xi: "--propose-implicit     propose implicit VR little endian TS only"
    to: "--timeout              [s]econds: integer (default: unlimited) timeout for connection requests"
    ta: "--acse-timeout         [s]econds: integer (default: 30) timeout for ACSE messages"
    td: "--dimse-timeout        [s]econds: integer (default: unlimited) timeout for DIMSE messages"
    max_pdu: "[n]umber of bytes: integer (4096..131072) set max receive pdu to n bytes (default: 16384)"
    repeat: "[n]umber: integer repeat n times"
    abort: "abort association instead of releasing it"
    od: "--output-directory     [d]irectory: string (default: \".\") write received objects to existing directory d"
    ignore: "ignore store data, receive but do not store"
    peer: "hostname of DICOM peer"
    port: "tcp/ip port number of peer"
    dcm_file_in: "DICOM query file(s)"
  }
}