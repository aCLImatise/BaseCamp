version 1.0

task Dump2dcm {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? ll
    Boolean? lc
    Boolean? _ignoremetainfo_ignore
    Boolean? dont_overwrite_uids
    Boolean? _writedataset_write
    Boolean? _stoponerror_write
    Boolean? _disablenewvr_disable
    Boolean? _grouplengthremove_always
    Boolean? _lengthundefined_write
    String dumpfile_in
    String dcm_file_out
  }
  command <<<
    dump2dcm \
      ~{dumpfile_in} \
      ~{dcm_file_out} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (ll) then "-ll" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if (_ignoremetainfo_ignore) then "-f" else ""} \
      ~{if (dont_overwrite_uids) then "--dont-overwrite-uids" else ""} \
      ~{if (_writedataset_write) then "-F" else ""} \
      ~{if (_stoponerror_write) then "-E" else ""} \
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
    _ignoremetainfo_ignore: "--ignore-meta-info     ignore file meta information"
    dont_overwrite_uids: "do not overwrite existing UIDs (default)"
    _writedataset_write: "--write-dataset        write data set without file meta information"
    _stoponerror_write: "--stop-on-error        do not write if dump is damaged (default)"
    _disablenewvr_disable: "--disable-new-vr       disable support for new VRs, convert to OB"
    _grouplengthremove_always: "--group-length-remove  always write without group length elements"
    _lengthundefined_write: "--length-undefined     write with undefined lengths"
    dumpfile_in: "dump input filename"
    dcm_file_out: "DICOM output filename"
  }
  output {
    File out_stdout = stdout()
  }
}