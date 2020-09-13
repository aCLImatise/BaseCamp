version 1.0

task Dcmscale {
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
    Boolean? _ignoreaspect_ignore
    Boolean? _nointerpolation_interpolation
    Boolean? _noscaling_scaling
    Boolean? _writedataset_write
    Boolean? _disablenewvr_disable
    Boolean? _grouplengthremove_always
    Boolean? _lengthundefined_write
    String dcm_file_in
    String dcm_file_out
    Int integer
  }
  command <<<
    dcmscale \
      ~{dcm_file_in} \
      ~{dcm_file_out} \
      ~{integer} \
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
      ~{if (_ignoreaspect_ignore) then "-a" else ""} \
      ~{if (_nointerpolation_interpolation) then "-i" else ""} \
      ~{if (_noscaling_scaling) then "-S" else ""} \
      ~{if (_writedataset_write) then "-F" else ""} \
      ~{if (_disablenewvr_disable) then "-u" else ""} \
      ~{if (_grouplengthremove_always) then "-g" else ""} \
      ~{if (_lengthundefined_write) then "-e" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet                quiet mode, print no warnings and errors"
    _verbose_details: "--verbose              verbose mode, print processing details"
    _debug_information: "--debug                debug mode, print debug information"
    ll: "--log-level            [l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    lc: "--log-config           [f]ilename: string\\nuse config file f for the logger"
    _readdataset_read: "--read-dataset         read data set without file meta information"
    _readxferauto_use: "=   --read-xfer-auto       use TS recognition (default)"
    td: "--read-xfer-detect     ignore TS specified in the file meta header"
    te: "--read-xfer-little     read with explicit VR little endian TS"
    tb: "--read-xfer-big        read with explicit VR big endian TS"
    ti: "--read-xfer-implicit   read with implicit VR little endian TS"
    _ignoreaspect_ignore: "--ignore-aspect        ignore pixel aspect ratio when scaling"
    _nointerpolation_interpolation: "--no-interpolation     no interpolation when scaling"
    _noscaling_scaling: "--no-scaling           no scaling, ignore pixel aspect ratio (default)"
    _writedataset_write: "--write-dataset        write data set without file meta information"
    _disablenewvr_disable: "--disable-new-vr       disable support for new VRs, convert to OB"
    _grouplengthremove_always: "--group-length-remove  always write without group length elements"
    _lengthundefined_write: "--length-undefined     write with undefined lengths"
    dcm_file_in: "DICOM input filename to be scaled"
    dcm_file_out: "DICOM output filename to be written"
    integer: "use interpolation when scaling (1..4, def: 1)"
  }
  output {
    File out_stdout = stdout()
  }
}