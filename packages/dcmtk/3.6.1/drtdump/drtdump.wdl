version 1.0

task Drtdump {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
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
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (ll) then "-ll" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if (_readdataset_read) then "-f" else ""} \
      ~{if (_readxferauto_use) then "-t" else ""} \
      ~{if (read_xfer_detect) then "--read-xfer-detect" else ""} \
      ~{if (read_xfer_little) then "--read-xfer-little" else ""} \
      ~{if (read_xfer_big) then "--read-xfer-big" else ""} \
      ~{if (read_xfer_implicit) then "--read-xfer-implicit" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet               quiet mode, print no warnings and errors"
    _verbose_details: "--verbose             verbose mode, print processing details"
    _debug_information: "--debug               debug mode, print debug information"
    ll: "--log-level           [l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    lc: "--log-config          [f]ilename: string\\nuse config file f for the logger"
    _readdataset_read: "--read-dataset        read data set without file meta information"
    _readxferauto_use: "=  --read-xfer-auto      use TS recognition (default)"
    read_xfer_detect: "ignore TS specified in the file meta header"
    read_xfer_little: "read with explicit VR little endian TS"
    read_xfer_big: "read with explicit VR big endian TS"
    read_xfer_implicit: "read with implicit VR little endian TS"
    drt_file_in: "DICOM RT input filename to be dumped"
  }
  output {
    File out_stdout = stdout()
  }
}