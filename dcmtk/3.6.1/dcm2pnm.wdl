version 1.0

task Dcm2pnm {
  input {
    Boolean? _quiet_print
    Boolean? _verbose_verbose
    Boolean? _debug_debug
    Boolean? ll
    Boolean? lc
    Boolean? _readdataset_read
    Boolean? _readxferauto_use
    Boolean? td
    Boolean? te
    Boolean? tb
    Boolean? ti
    Boolean? mf
    Boolean? im
    Boolean? _nooutput_create
    String dcm_file_in
    String bitmap_out
  }
  command <<<
    dcm2pnm \
      ~{dcm_file_in} \
      ~{bitmap_out} \
      ~{true="-q" false="" _quiet_print} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="-ll" false="" ll} \
      ~{true="-lc" false="" lc} \
      ~{true="-f" false="" _readdataset_read} \
      ~{true="-t" false="" _readxferauto_use} \
      ~{true="-td" false="" td} \
      ~{true="-te" false="" te} \
      ~{true="-tb" false="" tb} \
      ~{true="-ti" false="" ti} \
      ~{true="-mf" false="" mf} \
      ~{true="-im" false="" im} \
      ~{true="-o" false="" _nooutput_create}
  >>>
  parameter_meta {
    _quiet_print: "--quiet               quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose             verbose mode, print processing details"
    _debug_debug: "--debug               debug mode, print debug information"
    ll: "--log-level           [l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    lc: "--log-config          [f]ilename: string use config file f for the logger"
    _readdataset_read: "--read-dataset        read data set without file meta information"
    _readxferauto_use: "=   --read-xfer-auto      use TS recognition (default)"
    td: "--read-xfer-detect    ignore TS specified in the file meta header"
    te: "--read-xfer-little    read with explicit VR little endian TS"
    tb: "--read-xfer-big       read with explicit VR big endian TS"
    ti: "--read-xfer-implicit  read with implicit VR little endian TS"
    mf: "--meta-none           no PNG file meta information"
    im: "--image-info          print image details (requires verbose mode)"
    _nooutput_create: "--no-output           do not create any output (useful with -im)"
    dcm_file_in: "DICOM input filename to be converted"
    bitmap_out: "output filename to be written (default: stdout)"
  }
}