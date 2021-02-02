version 1.0

task Dsrdump {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? ll
    Boolean? lc
    Boolean? _readdataset_read
    Boolean? _readxferauto_use
    Boolean? td
    Boolean? te
    Boolean? tb
    Boolean? ti
    Boolean? ip
    Boolean? er
    Boolean? ev
    Boolean? ec
    Boolean? ee
    Boolean? ei
    Boolean? dv
    Boolean? ph
    Boolean? pn
    Boolean? pl
    Boolean? ps
    Boolean? pi
    Boolean? pe
    Boolean? _nocolor_use
    String dsr_file_in
  }
  command <<<
    dsrdump \
      ~{dsr_file_in} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (ll) then "-ll" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if (_readdataset_read) then "-f" else ""} \
      ~{if (_readxferauto_use) then "-t" else ""} \
      ~{if (td) then "-td" else ""} \
      ~{if (te) then "-te" else ""} \
      ~{if (tb) then "-tb" else ""} \
      ~{if (ti) then "-ti" else ""} \
      ~{if (ip) then "-Ip" else ""} \
      ~{if (er) then "-Er" else ""} \
      ~{if (ev) then "-Ev" else ""} \
      ~{if (ec) then "-Ec" else ""} \
      ~{if (ee) then "-Ee" else ""} \
      ~{if (ei) then "-Ei" else ""} \
      ~{if (dv) then "-Dv" else ""} \
      ~{if (ph) then "-Ph" else ""} \
      ~{if (pn) then "-Pn" else ""} \
      ~{if (pl) then "-Pl" else ""} \
      ~{if (ps) then "-Ps" else ""} \
      ~{if (pi) then "-Pi" else ""} \
      ~{if (pe) then "-Pe" else ""} \
      ~{if (_nocolor_use) then "-C" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet                 quiet mode, print no warnings and errors"
    _verbose_details: "--verbose               verbose mode, print processing details"
    _debug_information: "--debug                 debug mode, print debug information"
    ll: "--log-level             [l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    lc: "--log-config            [f]ilename: string\\nuse config file f for the logger"
    _readdataset_read: "--read-dataset          read data set without file meta information"
    _readxferauto_use: "=   --read-xfer-auto        use TS recognition (default)"
    td: "--read-xfer-detect      ignore TS specified in the file meta header"
    te: "--read-xfer-little      read with explicit VR little endian TS"
    tb: "--read-xfer-big         read with explicit VR big endian TS"
    ti: "--read-xfer-implicit    read with implicit VR little endian TS"
    ip: "--processing-details    show currently processed content item"
    er: "--unknown-relationship  accept unknown/missing relationship type"
    ev: "--invalid-item-value    accept invalid content item value\\n(e.g. violation of VR or VM definition)"
    ec: "--ignore-constraints    ignore relationship content constraints"
    ee: "--ignore-item-errors    do not abort on content item errors, just warn\\n(e.g. missing value type specific attributes)"
    ei: "--skip-invalid-items    skip invalid content items (incl. sub-tree)"
    dv: "--disable-vr-checker    disable check for VR-conformant string values"
    ph: "--no-document-header    do not print general document information"
    pn: "--indent-nested-items   indent nested items by spaces (default)"
    pl: "--shorten-long-values   print long item values shortened (default)"
    ps: "--print-sopclass-short  print short SOP class name of referenced\\nimage objects, e.g. \\\"CT image\\\" (default)"
    pi: "--no-invalid-codes      print text \\\"invalid code\\\" instead (default)"
    pe: "--no-enhanced-mode      do not indicate enhanced mode (default)"
    _nocolor_use: "--no-color              do not use any ANSI escape codes (default)"
    dsr_file_in: "DICOM SR input filename to be dumped"
  }
  output {
    File out_stdout = stdout()
  }
}