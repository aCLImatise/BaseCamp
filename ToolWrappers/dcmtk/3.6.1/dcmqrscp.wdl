version 1.0

task Dcmqrscp {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? ll
    Boolean? lc
    Boolean? _config_stringuse
    Boolean? _singleprocess_single
    Boolean? fork
    Boolean? require_find
    Boolean? no_parallel_store
    Boolean? disable_get
    Boolean? allow_shutdown
    Boolean? xf
    Boolean? no_check_find
    Boolean? _checkmove_check
    Boolean? no_check_move
    Boolean? move_unrestricted
    Boolean? za
    Boolean? zh
    Boolean? zv
    Boolean? qp
    Boolean? qs
    Boolean? qo
    Boolean? _proposeuncompr_propose
    Boolean? xe
    Boolean? xb
    Boolean? xi
    Boolean? xs
    Boolean? xy
    Boolean? xx
    Boolean? xv
    Boolean? xw
    Boolean? xt
    Boolean? xu
    Boolean? _proposempeg_propose_ts
    Boolean? xh
    Boolean? xn
    Boolean? xl
    Boolean? xr
    Boolean? xd
    Boolean? to
    Boolean? ta
    Boolean? td
    Boolean? max_pdu
    Boolean? disable_host_lookup
    Boolean? refuse
    Boolean? reject
    Boolean? ignore
    Boolean? up
    Boolean? _disablenewvr_disable
    Boolean? _normal_allow
    Boolean? _writedataset_write
    Boolean? _grouplengthremove_always
    Boolean? _lengthundefined_write
    Boolean? _paddingoff_padding
    String port
  }
  command <<<
    dcmqrscp \
      ~{port} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (ll) then "-ll" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if (_config_stringuse) then "-c" else ""} \
      ~{if (_singleprocess_single) then "-s" else ""} \
      ~{if (fork) then "--fork" else ""} \
      ~{if (require_find) then "--require-find" else ""} \
      ~{if (no_parallel_store) then "--no-parallel-store" else ""} \
      ~{if (disable_get) then "--disable-get" else ""} \
      ~{if (allow_shutdown) then "--allow-shutdown" else ""} \
      ~{if (xf) then "-XF" else ""} \
      ~{if (no_check_find) then "--no-check-find" else ""} \
      ~{if (_checkmove_check) then "-XM" else ""} \
      ~{if (no_check_move) then "--no-check-move" else ""} \
      ~{if (move_unrestricted) then "--move-unrestricted" else ""} \
      ~{if (za) then "-ZA" else ""} \
      ~{if (zh) then "-ZH" else ""} \
      ~{if (zv) then "-ZV" else ""} \
      ~{if (qp) then "-QP" else ""} \
      ~{if (qs) then "-QS" else ""} \
      ~{if (qo) then "-QO" else ""} \
      ~{if (_proposeuncompr_propose) then "-x" else ""} \
      ~{if (xe) then "-xe" else ""} \
      ~{if (xb) then "-xb" else ""} \
      ~{if (xi) then "-xi" else ""} \
      ~{if (xs) then "-xs" else ""} \
      ~{if (xy) then "-xy" else ""} \
      ~{if (xx) then "-xx" else ""} \
      ~{if (xv) then "-xv" else ""} \
      ~{if (xw) then "-xw" else ""} \
      ~{if (xt) then "-xt" else ""} \
      ~{if (xu) then "-xu" else ""} \
      ~{if (_proposempeg_propose_ts) then "-xm" else ""} \
      ~{if (xh) then "-xh" else ""} \
      ~{if (xn) then "-xn" else ""} \
      ~{if (xl) then "-xl" else ""} \
      ~{if (xr) then "-xr" else ""} \
      ~{if (xd) then "-xd" else ""} \
      ~{if (to) then "-to" else ""} \
      ~{if (ta) then "-ta" else ""} \
      ~{if (td) then "-td" else ""} \
      ~{if (max_pdu) then "--max-pdu" else ""} \
      ~{if (disable_host_lookup) then "--disable-host-lookup" else ""} \
      ~{if (refuse) then "--refuse" else ""} \
      ~{if (reject) then "--reject" else ""} \
      ~{if (ignore) then "--ignore" else ""} \
      ~{if (up) then "-up" else ""} \
      ~{if (_disablenewvr_disable) then "-u" else ""} \
      ~{if (_normal_allow) then "-B" else ""} \
      ~{if (_writedataset_write) then "-F" else ""} \
      ~{if (_grouplengthremove_always) then "-g" else ""} \
      ~{if (_lengthundefined_write) then "-e" else ""} \
      ~{if (_paddingoff_padding) then "-p" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet                 quiet mode, print no warnings and errors"
    _verbose_details: "--verbose               verbose mode, print processing details"
    _debug_information: "--debug                 debug mode, print debug information"
    ll: "--log-level             [l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    lc: "--log-config            [f]ilename: string\\nuse config file f for the logger"
    _config_stringuse: "--config                [f]ilename: string\\nuse specific configuration file\\n(default: /usr/local/etc/dcmtk/dcmqrscp.cfg)"
    _singleprocess_single: "--single-process        single process mode"
    fork: "fork child process for each assoc. (default)"
    require_find: "reject all MOVE/GET presentation contexts for\\nwhich no correspond. FIND context is proposed"
    no_parallel_store: "reject multiple simultaneous STORE presentat.\\ncontexts for one application entity title"
    disable_get: "disable C-GET support"
    allow_shutdown: "allow external shutdown via private SOP class"
    xf: "--check-find            check C-FIND identifier validity"
    no_check_find: "do not check C-FIND identifier validity (def.)"
    _checkmove_check: "--check-move            check C-MOVE identifier validity"
    no_check_move: "do not check C-MOVE identifier validity (def.)"
    move_unrestricted: "do not restrict move destination (default)"
    za: "--move-aetitle          restrict move dest. to requesting AE title"
    zh: "--move-host             restrict move destination to requesting host"
    zv: "--move-vendor           restrict move destination to requesting vendor"
    qp: "--no-patient-root       do not support Patient Root Q/R models"
    qs: "--no-study-root         do not support Study Root Q/R models"
    qo: "--no-patient-study      do not support Patient/Study Only Q/R models"
    _proposeuncompr_propose: "=   --propose-uncompr       propose all uncompressed TS, explicit VR\\nwith local byte ordering first (default)"
    xe: "--propose-little        propose all uncompressed TS, explicit VR\\nlittle endian first"
    xb: "--propose-big           propose all uncompressed TS, explicit VR\\nbig endian first"
    xi: "--propose-implicit      propose implicit VR little endian TS only"
    xs: "--propose-lossless      propose default JPEG lossless TS\\nand all uncompressed transfer syntaxes"
    xy: "--propose-jpeg8         propose default JPEG lossy TS for 8 bit data\\nand all uncompressed transfer syntaxes"
    xx: "--propose-jpeg12        propose default JPEG lossy TS for 12 bit data\\nand all uncompressed transfer syntaxes"
    xv: "--propose-j2k-lossless  propose JPEG 2000 lossless TS\\nand all uncompressed transfer syntaxes"
    xw: "--propose-j2k-lossy     propose JPEG 2000 lossy TS\\nand all uncompressed transfer syntaxes"
    xt: "--propose-jls-lossless  propose JPEG-LS lossless TS\\nand all uncompressed transfer syntaxes"
    xu: "--propose-jls-lossy     propose JPEG-LS lossy TS\\nand all uncompressed transfer syntaxes"
    _proposempeg_propose_ts: "--propose-mpeg2         propose MPEG2 Main Profile @ Main Level TS only"
    xh: "--propose-mpeg2-high    propose MPEG2 Main Profile @ High Level TS only"
    xn: "--propose-mpeg4         propose MPEG4 AVC/H.264 HP / Level 4.1 TS only"
    xl: "--propose-mpeg4-bd      propose MPEG4 AVC/H.264 BD-compatible TS only"
    xr: "--propose-rle           propose RLE lossless TS\\nand all uncompressed transfer syntaxes"
    xd: "--propose-deflated      propose deflated expl. VR little endian TS\\nand all uncompressed transfer syntaxes"
    to: "--timeout               [s]econds: integer (default: unlimited)\\ntimeout for connection requests"
    ta: "--acse-timeout          [s]econds: integer (default: 30)\\ntimeout for ACSE messages"
    td: "--dimse-timeout         [s]econds: integer (default: unlimited)\\ntimeout for DIMSE messages"
    max_pdu: "[n]umber of bytes: integer (4096..131072)\\nset max receive pdu to n bytes\\n(default: use value from configuration file)"
    disable_host_lookup: "disable hostname lookup"
    refuse: "refuse association"
    reject: "reject association if no implement. class UID"
    ignore: "ignore store data, receive but do not store"
    up: "--uid-padding           silently correct space-padded UIDs"
    _disablenewvr_disable: "--disable-new-vr        disable support for new VRs, convert to OB"
    _normal_allow: "--normal                allow implicit format conversions (default)"
    _writedataset_write: "--write-dataset         write data set without file meta information"
    _grouplengthremove_always: "--group-length-remove   always write without group length elements"
    _lengthundefined_write: "--length-undefined      write with undefined lengths"
    _paddingoff_padding: "--padding-off           no padding (default)"
    port: "tcp/ip port number to listen on\\n(default: in config file)"
  }
  output {
    File out_stdout = stdout()
  }
}