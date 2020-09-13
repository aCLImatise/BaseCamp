version 1.0

task Storescu {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? ll
    Boolean? lc
    Boolean? _readdataset_read
    Boolean? _norecurse_recurse
    Boolean? ae_title
    Boolean? etitle_stringset_called
    Boolean? xf
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
    Boolean? xm
    Boolean? xh
    Boolean? xn
    Boolean? xl
    Boolean? xr
    Boolean? xd
    Boolean? _required_propose
    Boolean? _disablenewvr_disable
    Boolean? user
    Boolean? password
    Boolean? empty_password
    Boolean? kt
    Boolean? saml
    Boolean? pos_response
    Boolean? to
    Boolean? ta
    Boolean? td
    Boolean? max_pdu
    Boolean? max_send_pdu
    Boolean? repeat
    Boolean? abort
    Boolean? nh
    Boolean? up
    Boolean? disable_tls
    Boolean? pw
    Boolean? pem_keys
    Boolean? der_keys
    Boolean? rc
    Boolean? vc
    Boolean? ic
    String peer
    String port
    String dcm_file_in
    String sent
    String use_specified_password
  }
  command <<<
    storescu \
      ~{peer} \
      ~{port} \
      ~{dcm_file_in} \
      ~{sent} \
      ~{use_specified_password} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (ll) then "-ll" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if (_readdataset_read) then "-f" else ""} \
      ~{if (_norecurse_recurse) then "-r" else ""} \
      ~{if (ae_title) then "--aetitle" else ""} \
      ~{if (etitle_stringset_called) then "--call" else ""} \
      ~{if (xf) then "-xf" else ""} \
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
      ~{if (xm) then "-xm" else ""} \
      ~{if (xh) then "-xh" else ""} \
      ~{if (xn) then "-xn" else ""} \
      ~{if (xl) then "-xl" else ""} \
      ~{if (xr) then "-xr" else ""} \
      ~{if (xd) then "-xd" else ""} \
      ~{if (_required_propose) then "-R" else ""} \
      ~{if (_disablenewvr_disable) then "-u" else ""} \
      ~{if (user) then "--user" else ""} \
      ~{if (password) then "--password" else ""} \
      ~{if (empty_password) then "--empty-password" else ""} \
      ~{if (kt) then "-kt" else ""} \
      ~{if (saml) then "--saml" else ""} \
      ~{if (pos_response) then "--pos-response" else ""} \
      ~{if (to) then "-to" else ""} \
      ~{if (ta) then "-ta" else ""} \
      ~{if (td) then "-td" else ""} \
      ~{if (max_pdu) then "--max-pdu" else ""} \
      ~{if (max_send_pdu) then "--max-send-pdu" else ""} \
      ~{if (repeat) then "--repeat" else ""} \
      ~{if (abort) then "--abort" else ""} \
      ~{if (nh) then "-nh" else ""} \
      ~{if (up) then "-up" else ""} \
      ~{if (disable_tls) then "--disable-tls" else ""} \
      ~{if (pw) then "-pw" else ""} \
      ~{if (pem_keys) then "--pem-keys" else ""} \
      ~{if (der_keys) then "--der-keys" else ""} \
      ~{if (rc) then "-rc" else ""} \
      ~{if (vc) then "-vc" else ""} \
      ~{if (ic) then "-ic" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet              quiet mode, print no warnings and errors"
    _verbose_details: "--verbose            verbose mode, print processing details"
    _debug_information: "--debug              debug mode, print debug information"
    ll: "--log-level          [l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    lc: "--log-config         [f]ilename: string\\nuse config file f for the logger"
    _readdataset_read: "--read-dataset       read data set without file meta information"
    _norecurse_recurse: "--no-recurse         do not recurse within directories (default)"
    ae_title: "[a]etitle: string\\nset my calling AE title (default: STORESCU)"
    etitle_stringset_called: "[a]etitle: string\\nset called AE title of peer (default: ANY-SCP)"
    xf: "--config-file        [f]ilename, [p]rofile: string\\nuse profile p from config file f"
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
    xm: "--propose-mpeg2         propose MPEG2 Main Profile @ Main Level TS only"
    xh: "--propose-mpeg2-high    propose MPEG2 Main Profile @ High Level TS only"
    xn: "--propose-mpeg4         propose MPEG4 AVC/H.264 HP / Level 4.1 TS only"
    xl: "--propose-mpeg4-bd      propose MPEG4 AVC/H.264 BD-compatible TS only"
    xr: "--propose-rle           propose RLE lossless TS\\nand all uncompressed transfer syntaxes"
    xd: "--propose-deflated      propose deflated expl. VR little endian TS\\nand all uncompressed transfer syntaxes"
    _required_propose: "--required              propose only required presentation contexts\\n(default: propose all supported)"
    _disablenewvr_disable: "--disable-new-vr     disable support for new VRs, convert to OB"
    user: "[u]ser name: string\\nauthenticate using user name u"
    password: "[p]assword: string (only with --user)\\nauthenticate using password p"
    empty_password: "send empty password (only with --user)"
    kt: "--kerberos           [f]ilename: string\\nread kerberos ticket from file f"
    saml: "[f]ilename: string\\nread SAML request from file f"
    pos_response: "expect positive response"
    to: "--timeout            [s]econds: integer (default: unlimited)\\ntimeout for connection requests"
    ta: "--acse-timeout       [s]econds: integer (default: 30)\\ntimeout for ACSE messages"
    td: "--dimse-timeout      [s]econds: integer (default: unlimited)\\ntimeout for DIMSE messages"
    max_pdu: "[n]umber of bytes: integer (4096..131072)\\nset max receive pdu to n bytes (default: 16384)"
    max_send_pdu: "[n]umber of bytes: integer (4096..131072)\\nrestrict max send pdu to n bytes"
    repeat: "[n]umber: integer\\nrepeat n times"
    abort: "abort association instead of releasing it"
    nh: "--no-halt            do not halt if unsuccessful store encountered\\n(default: do halt)"
    up: "--uid-padding        silently correct space-padded UIDs"
    disable_tls: "use normal TCP/IP connection (default)"
    pw: "--null-passwd        use empty string as password"
    pem_keys: "read keys and certificates as PEM file (default)"
    der_keys: "read keys and certificates as DER file"
    rc: "--require-peer-cert  verify peer certificate, fail if absent (default)"
    vc: "--verify-peer-cert   verify peer certificate if present"
    ic: "--ignore-peer-cert   don't verify peer certificate"
    peer: "hostname of DICOM peer"
    port: "tcp/ip port number of peer"
    dcm_file_in: "DICOM file or directory to be transmitted"
    sent: "+IR   --invent-series      [n]umber: integer (implies --invent-instance)"
    use_specified_password: "use specified password"
  }
  output {
    File out_stdout = stdout()
  }
}