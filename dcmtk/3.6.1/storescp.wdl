version 1.0

task Storescp {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? ll
    Boolean? lc
    Boolean? single_process
    Boolean? fork
    Boolean? xf
    Boolean? id
    Boolean? ta
    Boolean? td
    Boolean? ae_title
    Boolean? max_pdu
    Boolean? disable_host_lookup
    Boolean? refuse
    Boolean? reject
    Boolean? ignore
    Boolean? sleep_after
    Boolean? sleep_during
    Boolean? abort_after
    Boolean? abort_during
    Boolean? pm
    Boolean? up
    Boolean? disable_tls
    Boolean? pw
    Boolean? pem_keys
    Boolean? der_keys
    Boolean? rc
    Boolean? vc
    Boolean? ic
    Directory? od
    Boolean? _normal_allow
    Boolean? _writedataset_write
    Boolean? _disablenewvr_disable
    Boolean? _grouplengthremove_always
    Boolean? _lengthundefined_write
    Boolean? _paddingoff_padding
    Boolean? ss
    Boolean? su
    Boolean? sp
    Boolean? uf
    Boolean? tn
    Boolean? fe
    Boolean? xcr
    Boolean? xcs
    Boolean? rns
    Boolean? tos
    Boolean? xs
    String port
    String use_specified_password
  }
  command <<<
    storescp \
      ~{port} \
      ~{use_specified_password} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (ll) then "-ll" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if (single_process) then "--single-process" else ""} \
      ~{if (fork) then "--fork" else ""} \
      ~{if (xf) then "-xf" else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (ta) then "-ta" else ""} \
      ~{if (td) then "-td" else ""} \
      ~{if (ae_title) then "--aetitle" else ""} \
      ~{if (max_pdu) then "--max-pdu" else ""} \
      ~{if (disable_host_lookup) then "--disable-host-lookup" else ""} \
      ~{if (refuse) then "--refuse" else ""} \
      ~{if (reject) then "--reject" else ""} \
      ~{if (ignore) then "--ignore" else ""} \
      ~{if (sleep_after) then "--sleep-after" else ""} \
      ~{if (sleep_during) then "--sleep-during" else ""} \
      ~{if (abort_after) then "--abort-after" else ""} \
      ~{if (abort_during) then "--abort-during" else ""} \
      ~{if (pm) then "-pm" else ""} \
      ~{if (up) then "-up" else ""} \
      ~{if (disable_tls) then "--disable-tls" else ""} \
      ~{if (pw) then "-pw" else ""} \
      ~{if (pem_keys) then "--pem-keys" else ""} \
      ~{if (der_keys) then "--der-keys" else ""} \
      ~{if (rc) then "-rc" else ""} \
      ~{if (vc) then "-vc" else ""} \
      ~{if (ic) then "-ic" else ""} \
      ~{if (od) then "-od" else ""} \
      ~{if (_normal_allow) then "-B" else ""} \
      ~{if (_writedataset_write) then "-F" else ""} \
      ~{if (_disablenewvr_disable) then "-u" else ""} \
      ~{if (_grouplengthremove_always) then "-g" else ""} \
      ~{if (_lengthundefined_write) then "-e" else ""} \
      ~{if (_paddingoff_padding) then "-p" else ""} \
      ~{if (ss) then "-ss" else ""} \
      ~{if (su) then "-su" else ""} \
      ~{if (sp) then "-sp" else ""} \
      ~{if (uf) then "-uf" else ""} \
      ~{if (tn) then "-tn" else ""} \
      ~{if (fe) then "-fe" else ""} \
      ~{if (xcr) then "-xcr" else ""} \
      ~{if (xcs) then "-xcs" else ""} \
      ~{if (rns) then "-rns" else ""} \
      ~{if (tos) then "-tos" else ""} \
      ~{if (xs) then "-xs" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet                quiet mode, print no warnings and errors"
    _verbose_details: "--verbose              verbose mode, print processing details"
    _debug_information: "--debug                debug mode, print debug information"
    ll: "--log-level            [l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    lc: "--log-config           [f]ilename: string\\nuse config file f for the logger"
    single_process: "single process mode (default)"
    fork: "fork child process for each association"
    xf: "--config-file          [f]ilename, [p]rofile: string\\nuse profile p from config file f"
    id: "--inetd                run from inetd super server (not with --fork)"
    ta: "--acse-timeout         [s]econds: integer (default: 30)\\ntimeout for ACSE messages"
    td: "--dimse-timeout        [s]econds: integer (default: unlimited)\\ntimeout for DIMSE messages"
    ae_title: "[a]etitle: string\\nset my AE title (default: STORESCP)"
    max_pdu: "[n]umber of bytes: integer (4096..131072)\\nset max receive pdu to n bytes (def.: 16384)"
    disable_host_lookup: "disable hostname lookup"
    refuse: "refuse association"
    reject: "reject association if no implement. class UID"
    ignore: "ignore store data, receive but do not store"
    sleep_after: "[s]econds: integer\\nsleep s seconds after store (default: 0)"
    sleep_during: "[s]econds: integer\\nsleep s seconds during store (default: 0)"
    abort_after: "abort association after receipt of C-STORE-RQ\\n(but before sending response)"
    abort_during: "abort association during receipt of C-STORE-RQ"
    pm: "--promiscuous          promiscuous mode, accept unknown SOP classes\\n(not with --config-file)"
    up: "--uid-padding          silently correct space-padded UIDs"
    disable_tls: "use normal TCP/IP connection (default)"
    pw: "--null-passwd          use empty string as password"
    pem_keys: "read keys and certificates as PEM file (def.)"
    der_keys: "read keys and certificates as DER file"
    rc: "--require-peer-cert    verify peer certificate, fail if absent (def.)"
    vc: "--verify-peer-cert     verify peer certificate if present"
    ic: "--ignore-peer-cert     don't verify peer certificate"
    od: "--output-directory     [d]irectory: string (default: \\\".\\\")\\nwrite received objects to existing directory d"
    _normal_allow: "--normal               allow implicit format conversions (default)"
    _writedataset_write: "--write-dataset        write data set without file meta information"
    _disablenewvr_disable: "--disable-new-vr       disable support for new VRs, convert to OB"
    _grouplengthremove_always: "--group-length-remove  always write without group length elements"
    _lengthundefined_write: "--length-undefined     write with undefined lengths"
    _paddingoff_padding: "--padding-off          no padding (default)"
    ss: "--sort-conc-studies    [p]refix: string\\nsort studies using prefix p and a timestamp"
    su: "--sort-on-study-uid    [p]refix: string\\nsort studies using prefix p and the Study\\nInstance UID"
    sp: "--sort-on-patientname  sort studies using the Patient's Name and\\na timestamp"
    uf: "--default-filenames    generate filename from instance UID (default)"
    tn: "--timenames            generate filename from creation time"
    fe: "--filename-extension   [e]xtension: string\\nappend e to all filenames"
    xcr: "--exec-on-reception    [c]ommand: string\\nexecute command c after having received and\\nprocessed one C-STORE-RQ message"
    xcs: "--exec-on-eostudy      [c]ommand: string\\nexecute command c after having received and\\nprocessed all C-STORE-RQ messages that belong\\nto one study"
    rns: "--rename-on-eostudy    having received and processed all C-STORE-RQ\\nmessages that belong to one study, rename\\noutput files according to certain pattern"
    tos: "--eostudy-timeout      [t]imeout: integer\\nspecifies a timeout of t seconds for\\nend-of-study determination"
    xs: "--exec-sync            execute command synchronously in foreground"
    port: "tcp/ip port number to listen on"
    use_specified_password: "use specified password"
  }
  output {
    File out_stdout = stdout()
    Directory out_od = "${in_od}"
  }
}