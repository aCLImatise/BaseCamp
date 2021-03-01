version 1.0

task Dcml2pnm {
  input {
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? log_level
    Boolean? log_config
    Boolean? read_dataset
    Boolean? _readxferauto_use
    Boolean? read_xfer_detect
    Boolean? read_xfer_little
    Boolean? read_xfer_big
    Boolean? read_xfer_implicit
    Boolean? ignore_aspect
    Boolean? no_interpolation
    Boolean? no_scaling
    Boolean? no_modality
    Boolean? no_windowing
    Boolean? no_overlays
    Boolean? no_interlace
    Boolean? meta_none
    Boolean? image_info
    Boolean? no_output
    String dcm_file_in
    String bitmap_out
    Int integer
    String interpretation
  }
  command <<<
    dcml2pnm \
      ~{dcm_file_in} \
      ~{bitmap_out} \
      ~{integer} \
      ~{interpretation} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (read_dataset) then "--read-dataset" else ""} \
      ~{if (_readxferauto_use) then "-t" else ""} \
      ~{if (read_xfer_detect) then "--read-xfer-detect" else ""} \
      ~{if (read_xfer_little) then "--read-xfer-little" else ""} \
      ~{if (read_xfer_big) then "--read-xfer-big" else ""} \
      ~{if (read_xfer_implicit) then "--read-xfer-implicit" else ""} \
      ~{if (ignore_aspect) then "--ignore-aspect" else ""} \
      ~{if (no_interpolation) then "--no-interpolation" else ""} \
      ~{if (no_scaling) then "--no-scaling" else ""} \
      ~{if (no_modality) then "--no-modality" else ""} \
      ~{if (no_windowing) then "--no-windowing" else ""} \
      ~{if (no_overlays) then "--no-overlays" else ""} \
      ~{if (no_interlace) then "--nointerlace" else ""} \
      ~{if (meta_none) then "--meta-none" else ""} \
      ~{if (image_info) then "--image-info" else ""} \
      ~{if (no_output) then "--no-output" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arguments: "print expanded command line arguments"
    quiet: "quiet mode, print no warnings and errors"
    verbose: "verbose mode, print processing details"
    debug: "debug mode, print debug information"
    log_level: "[l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    log_config: "[f]ilename: string\\nuse config file f for the logger"
    read_dataset: "read data set without file meta information"
    _readxferauto_use: "=   --read-xfer-auto      use TS recognition (default)"
    read_xfer_detect: "ignore TS specified in the file meta header"
    read_xfer_little: "read with explicit VR little endian TS"
    read_xfer_big: "read with explicit VR big endian TS"
    read_xfer_implicit: "read with implicit VR little endian TS"
    ignore_aspect: "ignore pixel aspect ratio when scaling"
    no_interpolation: "no interpolation when scaling"
    no_scaling: "no scaling, ignore pixel aspect ratio (default)"
    no_modality: "ignore stored modality LUT transformation"
    no_windowing: "no VOI windowing (default)"
    no_overlays: "do not display overlays"
    no_interlace: "create non-interlaced file"
    meta_none: "no PNG file meta information"
    image_info: "print image details (requires verbose mode)"
    no_output: "do not create any output (useful with -im)"
    dcm_file_in: "DICOM input filename to be converted"
    bitmap_out: "output filename to be written (default: stdout)"
    integer: "use interpolation when scaling (1..4, def: 1)"
    interpretation: "+Mp   --accept-palettes     accept incorrect palette attribute tags"
  }
  output {
    File out_stdout = stdout()
  }
}