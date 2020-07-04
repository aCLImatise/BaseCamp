version 1.0

task Pdf2dcm {
  input {
    Boolean? _quiet_quiet
    Boolean? _verbose_verbose
    Boolean? _debug_debug
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
      ~{true="-q" false="" _quiet_quiet} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="-ll" false="" ll} \
      ~{true="-lc" false="" lc} \
      ~{true="--annotation-no" false="" annotation_no}
  >>>
  parameter_meta {
    _quiet_quiet: "--quiet              quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose            verbose mode, print processing details"
    _debug_debug: "--debug              debug mode, print debug information"
    ll: "--log-level          [l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    lc: "--log-config         [f]ilename: string use config file f for the logger"
    annotation_no: "PDF does not contain patient identifying data"
    pdf_file_in: "PDF input filename to be converted"
    dcm_file_out: "DICOM output filename"
  }
}