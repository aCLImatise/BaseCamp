version 1.0

task Dcmp2pgm {
  input {
    Boolean? _quiet_quiet
    Boolean? _verbose_verbose
    Boolean? _debug_debug
    Boolean? log_level
    Boolean? log_config
    Boolean? _pstate_ilename
    Boolean? _config_ilename
    Boolean? _frame_rame
    String dcm_file_in
    String bitmap_out
  }
  command <<<
    dcmp2pgm \
      ~{dcm_file_in} \
      ~{bitmap_out} \
      ~{true="-q" false="" _quiet_quiet} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="--log-level" false="" log_level} \
      ~{true="--log-config" false="" log_config} \
      ~{true="-p" false="" _pstate_ilename} \
      ~{true="-c" false="" _config_ilename} \
      ~{true="-f" false="" _frame_rame}
  >>>
  parameter_meta {
    _quiet_quiet: "--quiet        quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose      verbose mode, print processing details"
    _debug_debug: "--debug        debug mode, print debug information"
    log_level: "[l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    log_config: "[f]ilename: string use config file f for the logger"
    _pstate_ilename: "--pstate       [f]ilename: string process using presentation state file"
    _config_ilename: "--config       [f]ilename: string process using settings from configuration file"
    _frame_rame: "--frame        [f]rame: integer process using image frame f (default: 1)"
    dcm_file_in: "input DICOM image"
    bitmap_out: "output DICOM image or PGM bitmap"
  }
}