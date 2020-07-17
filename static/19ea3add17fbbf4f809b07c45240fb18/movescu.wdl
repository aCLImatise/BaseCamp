version 1.0

task Movescu {
  input {
    Boolean? _quiet_quiet
    Boolean? _verbose_verbose
    Boolean? _debug_debug
    Boolean? ll
    Boolean? lc
    Boolean? _key_ggggeeee
    Boolean? _patient_use
    Boolean? _study_use
    Boolean? _psonly_use
    Boolean? ae_title
    Boolean? etitle_string_set_called
    Boolean? move
    Boolean? _proposeuncompr_propose
    Boolean? xe
    Boolean? xb
    Boolean? xd
    Boolean? xi
    Boolean? no_port
    Boolean? pi
    Boolean? pr
    Boolean? to
    Boolean? ta
    Boolean? td
    Boolean? max_pdu
    Boolean? disable_host_lookup
    Boolean? repeat
    Boolean? abort
    Boolean? ignore
    Boolean? cancel
    Boolean? up
    Boolean? od
    Boolean? _writedataset_write
    Boolean? _disablenewvr_disable
    Boolean? _grouplengthremove_always
    Boolean? _lengthundefined_write
    String peer
    String port
    String dcm_file_in
  }
  command <<<
    movescu \
      ~{peer} \
      ~{port} \
      ~{dcm_file_in} \
      ~{true="-q" false="" _quiet_quiet} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="-ll" false="" ll} \
      ~{true="-lc" false="" lc} \
      ~{true="-k" false="" _key_ggggeeee} \
      ~{true="-P" false="" _patient_use} \
      ~{true="-S" false="" _study_use} \
      ~{true="-O" false="" _psonly_use} \
      ~{true="--aetitle" false="" ae_title} \
      ~{true="--call" false="" etitle_string_set_called} \
      ~{true="--move" false="" move} \
      ~{true="-x" false="" _proposeuncompr_propose} \
      ~{true="-xe" false="" xe} \
      ~{true="-xb" false="" xb} \
      ~{true="-xd" false="" xd} \
      ~{true="-xi" false="" xi} \
      ~{true="--no-port" false="" no_port} \
      ~{true="-pi" false="" pi} \
      ~{true="-pr" false="" pr} \
      ~{true="-to" false="" to} \
      ~{true="-ta" false="" ta} \
      ~{true="-td" false="" td} \
      ~{true="--max-pdu" false="" max_pdu} \
      ~{true="--disable-host-lookup" false="" disable_host_lookup} \
      ~{true="--repeat" false="" repeat} \
      ~{true="--abort" false="" abort} \
      ~{true="--ignore" false="" ignore} \
      ~{true="--cancel" false="" cancel} \
      ~{true="-up" false="" up} \
      ~{true="-od" false="" od} \
      ~{true="-F" false="" _writedataset_write} \
      ~{true="-u" false="" _disablenewvr_disable} \
      ~{true="-g" false="" _grouplengthremove_always} \
      ~{true="-e" false="" _lengthundefined_write}
  >>>
  parameter_meta {
    _quiet_quiet: "--quiet                quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose              verbose mode, print processing details"
    _debug_debug: "--debug                debug mode, print debug information"
    ll: "--log-level            [l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    lc: "--log-config           [f]ilename: string use config file f for the logger"
    _key_ggggeeee: "--key                  [k]ey: gggg,eeee=\"str\" or dict. name=\"str\" override matching key"
    _patient_use: "--patient              use patient root information model (default)"
    _study_use: "--study                use study root information model"
    _psonly_use: "--psonly               use patient/study only information model"
    ae_title: "[a]etitle: string set my calling AE title (default: MOVESCU)"
    etitle_string_set_called: "[a]etitle: string set called AE title of peer (default: ANY-SCP)"
    move: "[a]etitle: string set move destinat. AE title (default: MOVESCU)"
    _proposeuncompr_propose: "=   --propose-uncompr      propose all uncompressed TS, explicit VR with local byte ordering first (default)"
    xe: "--propose-little       propose all uncompressed TS, explicit VR little endian first"
    xb: "--propose-big          propose all uncompressed TS, explicit VR big endian first"
    xd: "--propose-deflated     propose deflated explicit VR little endian TS and all uncompressed transfer syntaxes"
    xi: "--propose-implicit     propose implicit VR little endian TS only"
    no_port: "no port for incoming associations (default)"
    pi: "--pending-ignore       assume no dataset present (default)"
    pr: "--pending-read         read and ignore dataset"
    to: "--timeout              [s]econds: integer (default: unlimited) timeout for connection requests"
    ta: "--acse-timeout         [s]econds: integer (default: 30) timeout for ACSE messages"
    td: "--dimse-timeout        [s]econds: integer (default: unlimited) timeout for DIMSE messages"
    max_pdu: "[n]umber of bytes: integer (4096..131072) set max receive pdu to n bytes (default: 16384)"
    disable_host_lookup: "disable hostname lookup"
    repeat: "[n]umber: integer repeat n times"
    abort: "abort association instead of releasing it"
    ignore: "ignore store data, receive but do not store"
    cancel: "[n]umber: integer cancel after n responses (default: never)"
    up: "--uid-padding          silently correct space-padded UIDs"
    od: "--output-directory     [d]irectory: string (default: \".\") write received objects to existing directory d"
    _writedataset_write: "--write-dataset        write data set without file meta information"
    _disablenewvr_disable: "--disable-new-vr       disable support for new VRs, convert to OB"
    _grouplengthremove_always: "--group-length-remove  always write without group length elements"
    _lengthundefined_write: "--length-undefined     write with undefined lengths"
    peer: "hostname of DICOM peer"
    port: "tcp/ip port number of peer"
    dcm_file_in: "DICOM query file(s)"
  }
}