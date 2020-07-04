version 1.0

task Storescp {
  input {
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
    Boolean? pw
    Boolean? pem_keys
    Boolean? der_keys
    Boolean? rc
    Boolean? vc
    Boolean? ic
    Boolean? od
    Boolean? _writedataset_write
    Boolean? _disablenewvr_disable
    Boolean? _grouplengthremove_always
    Boolean? _lengthundefined_write
    Boolean? ss
    Boolean? su
    Boolean? sp
    Boolean? tn
    Boolean? fe
    Boolean? xcr
    Boolean? xcs
    Boolean? rns
    Boolean? tos
    Boolean? xs
    String port
  }
  command <<<
    storescp \
      ~{port} \
      ~{true="--single-process" false="" single_process} \
      ~{true="--fork" false="" fork} \
      ~{true="-xf" false="" xf} \
      ~{true="-id" false="" id} \
      ~{true="-ta" false="" ta} \
      ~{true="-td" false="" td} \
      ~{true="--aetitle" false="" ae_title} \
      ~{true="--max-pdu" false="" max_pdu} \
      ~{true="--disable-host-lookup" false="" disable_host_lookup} \
      ~{true="--refuse" false="" refuse} \
      ~{true="--reject" false="" reject} \
      ~{true="--ignore" false="" ignore} \
      ~{true="--sleep-after" false="" sleep_after} \
      ~{true="--sleep-during" false="" sleep_during} \
      ~{true="--abort-after" false="" abort_after} \
      ~{true="--abort-during" false="" abort_during} \
      ~{true="-pm" false="" pm} \
      ~{true="-up" false="" up} \
      ~{true="-pw" false="" pw} \
      ~{true="--pem-keys" false="" pem_keys} \
      ~{true="--der-keys" false="" der_keys} \
      ~{true="-rc" false="" rc} \
      ~{true="-vc" false="" vc} \
      ~{true="-ic" false="" ic} \
      ~{true="-od" false="" od} \
      ~{true="-F" false="" _writedataset_write} \
      ~{true="-u" false="" _disablenewvr_disable} \
      ~{true="-g" false="" _grouplengthremove_always} \
      ~{true="-e" false="" _lengthundefined_write} \
      ~{true="-ss" false="" ss} \
      ~{true="-su" false="" su} \
      ~{true="-sp" false="" sp} \
      ~{true="-tn" false="" tn} \
      ~{true="-fe" false="" fe} \
      ~{true="-xcr" false="" xcr} \
      ~{true="-xcs" false="" xcs} \
      ~{true="-rns" false="" rns} \
      ~{true="-tos" false="" tos} \
      ~{true="-xs" false="" xs}
  >>>
  parameter_meta {
    single_process: "single process mode (default)"
    fork: "fork child process for each association"
    xf: "--config-file          [f]ilename, [p]rofile: string use profile p from config file f"
    id: "--inetd                run from inetd super server (not with --fork)"
    ta: "--acse-timeout         [s]econds: integer (default: 30) timeout for ACSE messages"
    td: "--dimse-timeout        [s]econds: integer (default: unlimited) timeout for DIMSE messages"
    ae_title: "[a]etitle: string set my AE title (default: STORESCP)"
    max_pdu: "[n]umber of bytes: integer (4096..131072) set max receive pdu to n bytes (def.: 16384)"
    disable_host_lookup: "disable hostname lookup"
    refuse: "refuse association"
    reject: "reject association if no implement. class UID"
    ignore: "ignore store data, receive but do not store"
    sleep_after: "[s]econds: integer sleep s seconds after store (default: 0)"
    sleep_during: "[s]econds: integer sleep s seconds during store (default: 0)"
    abort_after: "abort association after receipt of C-STORE-RQ (but before sending response)"
    abort_during: "abort association during receipt of C-STORE-RQ"
    pm: "--promiscuous          promiscuous mode, accept unknown SOP classes (not with --config-file)"
    up: "--uid-padding          silently correct space-padded UIDs"
    pw: "--null-passwd          use empty string as password"
    pem_keys: "read keys and certificates as PEM file (def.)"
    der_keys: "read keys and certificates as DER file"
    rc: "--require-peer-cert    verify peer certificate, fail if absent (def.)"
    vc: "--verify-peer-cert     verify peer certificate if present"
    ic: "--ignore-peer-cert     don't verify peer certificate"
    od: "--output-directory     [d]irectory: string (default: \".\") write received objects to existing directory d"
    _writedataset_write: "--write-dataset        write data set without file meta information"
    _disablenewvr_disable: "--disable-new-vr       disable support for new VRs, convert to OB"
    _grouplengthremove_always: "--group-length-remove  always write without group length elements"
    _lengthundefined_write: "--length-undefined     write with undefined lengths"
    ss: "--sort-conc-studies    [p]refix: string sort studies using prefix p and a timestamp"
    su: "--sort-on-study-uid    [p]refix: string sort studies using prefix p and the Study Instance UID"
    sp: "--sort-on-patientname  sort studies using the Patient's Name and a timestamp"
    tn: "--timenames            generate filename from creation time"
    fe: "--filename-extension   [e]xtension: string append e to all filenames"
    xcr: "--exec-on-reception    [c]ommand: string execute command c after having received and processed one C-STORE-RQ message"
    xcs: "--exec-on-eostudy      [c]ommand: string execute command c after having received and processed all C-STORE-RQ messages that belong to one study"
    rns: "--rename-on-eostudy    having received and processed all C-STORE-RQ messages that belong to one study, rename output files according to certain pattern"
    tos: "--eostudy-timeout      [t]imeout: integer specifies a timeout of t seconds for end-of-study determination"
    xs: "--exec-sync            execute command synchronously in foreground"
    port: "tcp/ip port number to listen on"
  }
}