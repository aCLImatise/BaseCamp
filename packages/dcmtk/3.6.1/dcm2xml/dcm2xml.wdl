version 1.0

task Dcm2xml {
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
    Boolean? _loadshort_load
    Boolean? dcmtk_format
    Boolean? native_format
    Boolean? wn
    String dcm_file_in
    String xml_file_out
  }
  command <<<
    dcm2xml \
      ~{dcm_file_in} \
      ~{xml_file_out} \
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
      ~{if (_loadshort_load) then "-M" else ""} \
      ~{if (dcmtk_format) then "--dcmtk-format" else ""} \
      ~{if (native_format) then "--native-format" else ""} \
      ~{if (wn) then "-Wn" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet               quiet mode, print no warnings and errors"
    _verbose_details: "--verbose             verbose mode, print processing details"
    _debug_information: "--debug               debug mode, print debug information"
    ll: "--log-level           [l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    lc: "--log-config          [f]ilename: string\\nuse config file f for the logger"
    _readdataset_read: "--read-dataset        read data set without file meta information"
    _readxferauto_use: "=   --read-xfer-auto      use TS recognition (default)"
    td: "--read-xfer-detect    ignore TS specified in the file meta header"
    te: "--read-xfer-little    read with explicit VR little endian TS"
    tb: "--read-xfer-big       read with explicit VR big endian TS"
    ti: "--read-xfer-implicit  read with implicit VR little endian TS"
    _loadshort_load: "--load-short          do not load very long values (default)"
    dcmtk_format: "output in DCMTK-specific format (default)"
    native_format: "output in Native DICOM Model format (part 19)"
    wn: "--no-element-name     do not write name of the DICOM data elements"
    dcm_file_in: "DICOM input filename to be converted"
    xml_file_out: "XML output filename (default: stdout)"
  }
  output {
    File out_stdout = stdout()
  }
}