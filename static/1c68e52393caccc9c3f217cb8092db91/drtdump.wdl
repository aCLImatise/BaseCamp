version 1.0

task Drtdump {
  input {
    Boolean? _quiet_print
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
    String drt_file_in
  }
  command <<<
    drtdump \
      ~{drt_file_in} \
      ~{true="-q" false="" _quiet_print} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="-ll" false="" ll} \
      ~{true="-lc" false="" lc} \
      ~{true="-f" false="" _readdataset_read} \
      ~{true="-t" false="" _readxferauto_use} \
      ~{true="--read-xfer-detect" false="" read_xfer_detect} \
      ~{true="--read-xfer-little" false="" read_xfer_little} \
      ~{true="--read-xfer-big" false="" read_xfer_big} \
      ~{true="--read-xfer-implicit" false="" read_xfer_implicit}
  >>>
  parameter_meta {
    _quiet_print: "--quiet               quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose             verbose mode, print processing details"
    _debug_debug: "--debug               debug mode, print debug information"
    ll: "--log-level           [l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    lc: "--log-config          [f]ilename: string use config file f for the logger"
    _readdataset_read: "--read-dataset        read data set without file meta information"
    _readxferauto_use: "=  --read-xfer-auto      use TS recognition (default)"
    read_xfer_detect: "ignore TS specified in the file meta header"
    read_xfer_little: "read with explicit VR little endian TS"
    read_xfer_big: "read with explicit VR big endian TS"
    read_xfer_implicit: "read with implicit VR little endian TS"
    drt_file_in: "DICOM RT input filename to be dumped"
  }
}