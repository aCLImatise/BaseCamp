version 1.0

task Dsrdump {
  input {
    Boolean? _quiet_quiet
    Boolean? _verbose_verbose
    Boolean? _debug_debug
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
    Boolean? pn
    Boolean? pe
    Boolean? _nocolor_use
    String dsr_file_in
  }
  command <<<
    dsrdump \
      ~{dsr_file_in} \
      ~{true="-q" false="" _quiet_quiet} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="-ll" false="" ll} \
      ~{true="-lc" false="" lc} \
      ~{true="-f" false="" _readdataset_read} \
      ~{true="-t" false="" _readxferauto_use} \
      ~{true="-td" false="" td} \
      ~{true="-te" false="" te} \
      ~{true="-tb" false="" tb} \
      ~{true="-ti" false="" ti} \
      ~{true="-Ip" false="" ip} \
      ~{true="-Er" false="" er} \
      ~{true="-Ev" false="" ev} \
      ~{true="-Ec" false="" ec} \
      ~{true="-Ee" false="" ee} \
      ~{true="-Ei" false="" ei} \
      ~{true="-Dv" false="" dv} \
      ~{true="-Pn" false="" pn} \
      ~{true="-Pe" false="" pe} \
      ~{true="-C" false="" _nocolor_use}
  >>>
  parameter_meta {
    _quiet_quiet: "--quiet                 quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose               verbose mode, print processing details"
    _debug_debug: "--debug                 debug mode, print debug information"
    ll: "--log-level             [l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    lc: "--log-config            [f]ilename: string use config file f for the logger"
    _readdataset_read: "--read-dataset          read data set without file meta information"
    _readxferauto_use: "=   --read-xfer-auto        use TS recognition (default)"
    td: "--read-xfer-detect      ignore TS specified in the file meta header"
    te: "--read-xfer-little      read with explicit VR little endian TS"
    tb: "--read-xfer-big         read with explicit VR big endian TS"
    ti: "--read-xfer-implicit    read with implicit VR little endian TS"
    ip: "--processing-details    show currently processed content item"
    er: "--unknown-relationship  accept unknown/missing relationship type"
    ev: "--invalid-item-value    accept invalid content item value (e.g. violation of VR or VM definition)"
    ec: "--ignore-constraints    ignore relationship content constraints"
    ee: "--ignore-item-errors    do not abort on content item errors, just warn (e.g. missing value type specific attributes)"
    ei: "--skip-invalid-items    skip invalid content items (incl. sub-tree)"
    dv: "--disable-vr-checker    disable check for VR-conformant string values"
    pn: "--indent-nested-items   indent nested items by spaces (default)"
    pe: "--no-enhanced-mode      do not indicate enhanced mode (default)"
    _nocolor_use: "--no-color              do not use any ANSI escape codes (default)"
    dsr_file_in: "DICOM SR input filename to be dumped"
  }
}