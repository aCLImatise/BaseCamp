version 1.0

task Dcm2pnm {
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
    Boolean? _ignoreaspect_ignore
    Boolean? _nointerpolation_interpolation
    Boolean? _noscaling_scaling
    Boolean? _nomodality_ignore
    Boolean? _nowindowing_voi
    Boolean? _nooverlays_display
    Boolean? il
    Boolean? mf
    Boolean? im
    Boolean? _nooutput_create
    String dcm_file_in
    String bitmap_out
    Int integer
    String interpretation
  }
  command <<<
    dcm2pnm \
      ~{dcm_file_in} \
      ~{bitmap_out} \
      ~{integer} \
      ~{interpretation} \
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
      ~{if (_ignoreaspect_ignore) then "-a" else ""} \
      ~{if (_nointerpolation_interpolation) then "-i" else ""} \
      ~{if (_noscaling_scaling) then "-S" else ""} \
      ~{if (_nomodality_ignore) then "-M" else ""} \
      ~{if (_nowindowing_voi) then "-W" else ""} \
      ~{if (_nooverlays_display) then "-O" else ""} \
      ~{if (il) then "-il" else ""} \
      ~{if (mf) then "-mf" else ""} \
      ~{if (im) then "-im" else ""} \
      ~{if (_nooutput_create) then "-o" else ""}
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
    _ignoreaspect_ignore: "--ignore-aspect       ignore pixel aspect ratio when scaling"
    _nointerpolation_interpolation: "--no-interpolation    no interpolation when scaling"
    _noscaling_scaling: "--no-scaling          no scaling, ignore pixel aspect ratio (default)"
    _nomodality_ignore: "--no-modality         ignore stored modality LUT transformation"
    _nowindowing_voi: "--no-windowing        no VOI windowing (default)"
    _nooverlays_display: "--no-overlays         do not display overlays"
    il: "--nointerlace         create non-interlaced file"
    mf: "--meta-none           no PNG file meta information"
    im: "--image-info          print image details (requires verbose mode)"
    _nooutput_create: "--no-output           do not create any output (useful with -im)"
    dcm_file_in: "DICOM input filename to be converted"
    bitmap_out: "output filename to be written (default: stdout)"
    integer: "use interpolation when scaling (1..4, def: 1)"
    interpretation: "+Mp   --accept-palettes     accept incorrect palette attribute tags"
  }
  output {
    File out_stdout = stdout()
  }
}