version 1.0

task Dcmdrle {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? ll
    Boolean? lc
    Boolean? _readdataset_read
    Boolean? _writedataset_write
    Boolean? _disablenewvr_disable
    Boolean? _grouplengthremove_always
    Boolean? _lengthundefined_write
    String dcm_file_in
    String dcm_file_out
  }
  command <<<
    dcmdrle \
      ~{dcm_file_in} \
      ~{dcm_file_out} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (ll) then "-ll" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if (_readdataset_read) then "-f" else ""} \
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
    _writedataset_write: "--write-dataset        write data set without file meta information"
    _disablenewvr_disable: "--disable-new-vr       disable support for new VRs, convert to OB"
    _grouplengthremove_always: "--group-length-remove  always write without group length elements"
    _lengthundefined_write: "--length-undefined     write with undefined lengths"
    dcm_file_in: "DICOM input filename to be converted"
    dcm_file_out: "DICOM output filename"
  }
  output {
    File out_stdout = stdout()
  }
}