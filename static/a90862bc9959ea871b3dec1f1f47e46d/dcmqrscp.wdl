version 1.0

task Dcmqrscp {
  input {
    Boolean? _quiet_quiet
    Boolean? _verbose_verbose
    Boolean? _debug_debug
    Boolean? ll
    Boolean? lc
    Boolean? _config_ilename
    Boolean? _singleprocess_single
    Boolean? require_find
    Boolean? no_parallel_store
    Boolean? disable_get
    Boolean? allow_shutdown
    Boolean? xf
    Boolean? _cmove_validity
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
    Boolean? _proposempeg_propose_profile
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
    Boolean? _writedataset_data
    Boolean? _grouplengthremove_always
    Boolean? _lengthundefined_write
    String port
  }
  command <<<
    dcmqrscp \
      ~{port} \
      ~{true="-q" false="" _quiet_quiet} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="-ll" false="" ll} \
      ~{true="-lc" false="" lc} \
      ~{true="-c" false="" _config_ilename} \
      ~{true="-s" false="" _singleprocess_single} \
      ~{true="--require-find" false="" require_find} \
      ~{true="--no-parallel-store" false="" no_parallel_store} \
      ~{true="--disable-get" false="" disable_get} \
      ~{true="--allow-shutdown" false="" allow_shutdown} \
      ~{true="-XF" false="" xf} \
      ~{true="-XM" false="" _cmove_validity} \
      ~{true="-ZA" false="" za} \
      ~{true="-ZH" false="" zh} \
      ~{true="-ZV" false="" zv} \
      ~{true="-QP" false="" qp} \
      ~{true="-QS" false="" qs} \
      ~{true="-QO" false="" qo} \
      ~{true="-x" false="" _proposeuncompr_propose} \
      ~{true="-xe" false="" xe} \
      ~{true="-xb" false="" xb} \
      ~{true="-xi" false="" xi} \
      ~{true="-xs" false="" xs} \
      ~{true="-xy" false="" xy} \
      ~{true="-xx" false="" xx} \
      ~{true="-xv" false="" xv} \
      ~{true="-xw" false="" xw} \
      ~{true="-xt" false="" xt} \
      ~{true="-xu" false="" xu} \
      ~{true="-xm" false="" _proposempeg_propose_profile} \
      ~{true="-xh" false="" xh} \
      ~{true="-xn" false="" xn} \
      ~{true="-xl" false="" xl} \
      ~{true="-xr" false="" xr} \
      ~{true="-xd" false="" xd} \
      ~{true="-to" false="" to} \
      ~{true="-ta" false="" ta} \
      ~{true="-td" false="" td} \
      ~{true="--max-pdu" false="" max_pdu} \
      ~{true="--disable-host-lookup" false="" disable_host_lookup} \
      ~{true="--refuse" false="" refuse} \
      ~{true="--reject" false="" reject} \
      ~{true="--ignore" false="" ignore} \
      ~{true="-up" false="" up} \
      ~{true="-u" false="" _disablenewvr_disable} \
      ~{true="-F" false="" _writedataset_data} \
      ~{true="-g" false="" _grouplengthremove_always} \
      ~{true="-e" false="" _lengthundefined_write}
  >>>
  parameter_meta {
    _quiet_quiet: "--quiet                 quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose               verbose mode, print processing details"
    _debug_debug: "--debug                 debug mode, print debug information"
    ll: "--log-level             [l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    lc: "--log-config            [f]ilename: string use config file f for the logger"
    _config_ilename: "--config                [f]ilename: string use specific configuration file (default: /tmp/tmpqmdno0st/etc/dcmtk/dcmqrscp.cfg)"
    _singleprocess_single: "--single-process        single process mode --fork                  fork child process for each assoc. (default)"
    require_find: "reject all MOVE/GET presentation contexts for which no correspond. FIND context is proposed"
    no_parallel_store: "reject multiple simultaneous STORE presentat. contexts for one application entity title"
    disable_get: "disable C-GET support"
    allow_shutdown: "allow external shutdown via private SOP class"
    xf: "--check-find            check C-FIND identifier validity --no-check-find         do not check C-FIND identifier validity (def.)"
    _cmove_validity: "--check-move            check C-MOVE identifier validity --no-check-move         do not check C-MOVE identifier validity (def.)"
    za: "--move-aetitle          restrict move dest. to requesting AE title"
    zh: "--move-host             restrict move destination to requesting host"
    zv: "--move-vendor           restrict move destination to requesting vendor"
    qp: "--no-patient-root       do not support Patient Root Q/R models"
    qs: "--no-study-root         do not support Study Root Q/R models"
    qo: "--no-patient-study      do not support Patient/Study Only Q/R models"
    _proposeuncompr_propose: "=   --propose-uncompr       propose all uncompressed TS, explicit VR with local byte ordering first (default)"
    xe: "--propose-little        propose all uncompressed TS, explicit VR little endian first"
    xb: "--propose-big           propose all uncompressed TS, explicit VR big endian first"
    xi: "--propose-implicit      propose implicit VR little endian TS only"
    xs: "--propose-lossless      propose default JPEG lossless TS and all uncompressed transfer syntaxes"
    xy: "--propose-jpeg8         propose default JPEG lossy TS for 8 bit data and all uncompressed transfer syntaxes"
    xx: "--propose-jpeg12        propose default JPEG lossy TS for 12 bit data and all uncompressed transfer syntaxes"
    xv: "--propose-j2k-lossless  propose JPEG 2000 lossless TS and all uncompressed transfer syntaxes"
    xw: "--propose-j2k-lossy     propose JPEG 2000 lossy TS and all uncompressed transfer syntaxes"
    xt: "--propose-jls-lossless  propose JPEG-LS lossless TS and all uncompressed transfer syntaxes"
    xu: "--propose-jls-lossy     propose JPEG-LS lossy TS and all uncompressed transfer syntaxes"
    _proposempeg_propose_profile: "--propose-mpeg2         propose MPEG2 Main Profile @ Main Level TS only"
    xh: "--propose-mpeg2-high    propose MPEG2 Main Profile @ High Level TS only"
    xn: "--propose-mpeg4         propose MPEG4 AVC/H.264 HP / Level 4.1 TS only"
    xl: "--propose-mpeg4-bd      propose MPEG4 AVC/H.264 BD-compatible TS only"
    xr: "--propose-rle           propose RLE lossless TS and all uncompressed transfer syntaxes"
    xd: "--propose-deflated      propose deflated expl. VR little endian TS and all uncompressed transfer syntaxes"
    to: "--timeout               [s]econds: integer (default: unlimited) timeout for connection requests"
    ta: "--acse-timeout          [s]econds: integer (default: 30) timeout for ACSE messages"
    td: "--dimse-timeout         [s]econds: integer (default: unlimited) timeout for DIMSE messages"
    max_pdu: "[n]umber of bytes: integer (4096..131072) set max receive pdu to n bytes (default: use value from configuration file)"
    disable_host_lookup: "disable hostname lookup"
    refuse: "refuse association"
    reject: "reject association if no implement. class UID"
    ignore: "ignore store data, receive but do not store"
    up: "--uid-padding           silently correct space-padded UIDs"
    _disablenewvr_disable: "--disable-new-vr        disable support for new VRs, convert to OB"
    _writedataset_data: "--write-dataset         write data set without file meta information"
    _grouplengthremove_always: "--group-length-remove   always write without group length elements"
    _lengthundefined_write: "--length-undefined      write with undefined lengths"
    port: "tcp/ip port number to listen on (default: in config file)"
  }
}