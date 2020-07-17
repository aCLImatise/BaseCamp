version 1.0

task Dcmgpdir {
  input {
    Boolean? _quiet_print
    Boolean? _verbose_verbose
    Boolean? _debug_debug
    Boolean? ll
    Boolean? lc
    Boolean? _abortinconsistfile_abort
    Boolean? no_xfer_check
    Boolean? _discard_write
    Boolean? nb
    Boolean? _disable_support
    Boolean? _lengthundefined_write
    String dcm_file_in
  }
  command <<<
    dcmgpdir \
      ~{dcm_file_in} \
      ~{true="-q" false="" _quiet_print} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="-ll" false="" ll} \
      ~{true="-lc" false="" lc} \
      ~{true="-a" false="" _abortinconsistfile_abort} \
      ~{true="--no-xfer-check" false="" no_xfer_check} \
      ~{true="-w" false="" _discard_write} \
      ~{true="-nb" false="" nb} \
      ~{true="-u" false="" _disable_support} \
      ~{true="-e" false="" _lengthundefined_write}
  >>>
  parameter_meta {
    _quiet_print: "--quiet                  quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose                verbose mode, print processing details"
    _debug_debug: "--debug                  debug mode, print debug information"
    ll: "--log-level              [l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    lc: "--log-config             [f]ilename: string use config file f for the logger"
    _abortinconsistfile_abort: "--abort-inconsist-file   abort on first inconsistent file"
    no_xfer_check: "do not reject images with non-standard transfer syntax (just warn)"
    _discard_write: "--discard                do not write out DICOMDIR"
    nb: "--no-backup              do not create a backup of existing DICOMDIR"
    _disable_support: "--disable-new-vr         disable support for new VRs, convert to OB"
    _lengthundefined_write: "--length-undefined       write with undefined lengths"
    dcm_file_in: "ref. DICOM file (or directory to be scanned)"
  }
}