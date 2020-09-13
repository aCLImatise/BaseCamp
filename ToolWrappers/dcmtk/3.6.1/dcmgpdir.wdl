version 1.0

task Dcmgpdir {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? ll
    Boolean? lc
    Boolean? _keepfilenames_expect
    Boolean? _norecurse_recurse
    Boolean? _noconsistencycheck_check
    Boolean? _abort_first
    Boolean? _strict_exit
    Boolean? no_xfer_check
    Boolean? _replace_replace
    Boolean? _discard_write
    Boolean? create_backup
    Boolean? nb
    Boolean? _disablenewvr_disable
    Boolean? _grouplengthremove_write
    Boolean? _lengthundefined_write
    String dcm_file_in
  }
  command <<<
    dcmgpdir \
      ~{dcm_file_in} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (ll) then "-ll" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if (_keepfilenames_expect) then "-m" else ""} \
      ~{if (_norecurse_recurse) then "-r" else ""} \
      ~{if (_noconsistencycheck_check) then "-W" else ""} \
      ~{if (_abort_first) then "-a" else ""} \
      ~{if (_strict_exit) then "-I" else ""} \
      ~{if (no_xfer_check) then "--no-xfer-check" else ""} \
      ~{if (_replace_replace) then "-A" else ""} \
      ~{if (_discard_write) then "-w" else ""} \
      ~{if (create_backup) then "--create-backup" else ""} \
      ~{if (nb) then "-nb" else ""} \
      ~{if (_disablenewvr_disable) then "-u" else ""} \
      ~{if (_grouplengthremove_write) then "-g" else ""} \
      ~{if (_lengthundefined_write) then "-e" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet                  quiet mode, print no warnings and errors"
    _verbose_details: "--verbose                verbose mode, print processing details"
    _debug_information: "--debug                  debug mode, print debug information"
    ll: "--log-level              [l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    lc: "--log-config             [f]ilename: string\\nuse config file f for the logger"
    _keepfilenames_expect: "--keep-filenames         expect filenames to be in DICOM format (def.)"
    _norecurse_recurse: "--no-recurse             do not recurse within directories (default)"
    _noconsistencycheck_check: "--no-consistency-check   do not check files for consistency"
    _abort_first: "--abort-inconsist-file   abort on first inconsistent file"
    _strict_exit: "--strict                 exit with error if DICOMDIR type 1 attributes\\nare missing in DICOM file (default)"
    no_xfer_check: "do not reject images with non-standard\\ntransfer syntax (just warn)"
    _replace_replace: "--replace                replace existing DICOMDIR (default)"
    _discard_write: "--discard                do not write out DICOMDIR"
    create_backup: "create a backup of existing DICOMDIR (def.)"
    nb: "--no-backup              do not create a backup of existing DICOMDIR"
    _disablenewvr_disable: "--disable-new-vr         disable support for new VRs, convert to OB"
    _grouplengthremove_write: "--group-length-remove    write without group length elements (default)"
    _lengthundefined_write: "--length-undefined       write with undefined lengths"
    dcm_file_in: "ref. DICOM file (or directory to be scanned)"
  }
  output {
    File out_stdout = stdout()
  }
}