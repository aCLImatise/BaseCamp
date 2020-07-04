version 1.0

task Dsr2xml {
  input {
    Boolean? _quiet_quiet
    Boolean? _verbose_verbose
    Boolean? _debug_debug
    Boolean? ll
    Boolean? lc
    Boolean? _readdataset_read
    Boolean? _readxferauto_use
    Boolean? read_xfer_detect
    Boolean? read_xfer_little
    Boolean? read_xfer_big
    Boolean? read_xfer_implicit
    Boolean? unknown_relationship
    Boolean? invalid_item_value
    Boolean? ignore_constraints
    Boolean? ignore_item_errors
    Boolean? skip_invalid_items
    Boolean? disable_vr_checker
    String dsr_file_in
    String xml_file_out
  }
  command <<<
    dsr2xml \
      ~{dsr_file_in} \
      ~{xml_file_out} \
      ~{true="-q" false="" _quiet_quiet} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="-ll" false="" ll} \
      ~{true="-lc" false="" lc} \
      ~{true="-f" false="" _readdataset_read} \
      ~{true="-t" false="" _readxferauto_use} \
      ~{true="--read-xfer-detect" false="" read_xfer_detect} \
      ~{true="--read-xfer-little" false="" read_xfer_little} \
      ~{true="--read-xfer-big" false="" read_xfer_big} \
      ~{true="--read-xfer-implicit" false="" read_xfer_implicit} \
      ~{true="--unknown-relationship" false="" unknown_relationship} \
      ~{true="--invalid-item-value" false="" invalid_item_value} \
      ~{true="--ignore-constraints" false="" ignore_constraints} \
      ~{true="--ignore-item-errors" false="" ignore_item_errors} \
      ~{true="--skip-invalid-items" false="" skip_invalid_items} \
      ~{true="--disable-vr-checker" false="" disable_vr_checker}
  >>>
  parameter_meta {
    _quiet_quiet: "--quiet                 quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose               verbose mode, print processing details"
    _debug_debug: "--debug                 debug mode, print debug information"
    ll: "--log-level             [l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    lc: "--log-config            [f]ilename: string use config file f for the logger"
    _readdataset_read: "--read-dataset          read data set without file meta information"
    _readxferauto_use: "=  --read-xfer-auto        use TS recognition (default)"
    read_xfer_detect: "ignore TS specified in the file meta header"
    read_xfer_little: "read with explicit VR little endian TS"
    read_xfer_big: "read with explicit VR big endian TS"
    read_xfer_implicit: "read with implicit VR little endian TS"
    unknown_relationship: "accept unknown/missing relationship type"
    invalid_item_value: "accept invalid content item value (e.g. violation of VR or VM definition)"
    ignore_constraints: "ignore relationship content constraints"
    ignore_item_errors: "do not abort on content item errors, just warn (e.g. missing value type specific attributes)"
    skip_invalid_items: "skip invalid content items (incl. sub-tree)"
    disable_vr_checker: "disable check for VR-conformant string values"
    dsr_file_in: "DICOM SR input filename to be converted"
    xml_file_out: "XML output filename (default: stdout)"
  }
}