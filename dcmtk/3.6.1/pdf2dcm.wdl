version 1.0

task Pdf2dcm {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? ll
    Boolean? lc
    Boolean? annotation_no
    String pdf_file_in
    String dcm_file_out
  }
  command <<<
    pdf2dcm \
      ~{pdf_file_in} \
      ~{dcm_file_out} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (ll) then "-ll" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if (annotation_no) then "--annotation-no" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet              quiet mode, print no warnings and errors"
    _verbose_details: "--verbose            verbose mode, print processing details"
    _debug_information: "--debug              debug mode, print debug information"
    ll: "--log-level          [l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    lc: "--log-config         [f]ilename: string\\nuse config file f for the logger"
    annotation_no: "PDF does not contain patient identifying data"
    pdf_file_in: "PDF input filename to be converted"
    dcm_file_out: "DICOM output filename"
  }
  output {
    File out_stdout = stdout()
  }
}