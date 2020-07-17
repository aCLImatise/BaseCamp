version 1.0

task Dcm2pdf {
  input {
    Boolean? _quiet_print
    Boolean? _verbose_verbose
    Boolean? _debug_debug
    Boolean? ll
    Boolean? lc
    Boolean? _readdataset_read
    Boolean? _readxferauto_use
    Boolean? read_xfer_detect
    Boolean? read_xfer_little
    Boolean? read_xfer_big
    Boolean? read_xfer_implicit
    Boolean? disable_cp_two_four_six
    Boolean? disable_correction
    Boolean? _exec_ommand
    String dcm_file_in
    String pdf_file_out
  }
  command <<<
    dcm2pdf \
      ~{dcm_file_in} \
      ~{pdf_file_out} \
      ~{true="-q" false="" _quiet_print} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="-ll" false="" ll} \
      ~{true="-lc" false="" lc} \
      ~{true="-f" false="" _readdataset_read} \
      ~{true="-t" false="" _readxferauto_use} \
      ~{true="--read-xfer-detect" false="" read_xfer_detect} \
      ~{true="--read-xfer-little" false="" read_xfer_little} \
      ~{true="--read-xfer-big" false="" read_xfer_big} \
      ~{true="--read-xfer-implicit" false="" read_xfer_implicit} \
      ~{true="--disable-cp246" false="" disable_cp_two_four_six} \
      ~{true="--disable-correction" false="" disable_correction} \
      ~{true="-x" false="" _exec_ommand}
  >>>
  parameter_meta {
    _quiet_print: "--quiet               quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose             verbose mode, print processing details"
    _debug_debug: "--debug               debug mode, print debug information"
    ll: "--log-level           [l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    lc: "--log-config          [f]ilename: string use config file f for the logger"
    _readdataset_read: "--read-dataset        read data set without file meta information"
    _readxferauto_use: "=  --read-xfer-auto      use TS recognition (default)"
    read_xfer_detect: "ignore TS specified in the file meta header"
    read_xfer_little: "read with explicit VR little endian TS"
    read_xfer_big: "read with explicit VR big endian TS"
    read_xfer_implicit: "read with implicit VR little endian TS"
    disable_cp_two_four_six: "read undefined len UN as explicit VR"
    disable_correction: "disable automatic data correction"
    _exec_ommand: "--exec                [c]ommand: string execute command c after PDF extraction"
    dcm_file_in: "DICOM input filename"
    pdf_file_out: "PDF output filename"
  }
}