version 1.0

task Dcmpsmk {
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
    Boolean? voi_ignore
    Boolean? curve_ignore
    Boolean? overlay_ignore
    Boolean? shutter_ignore
    Boolean? plut_ignore
    Boolean? location_none
    Boolean? location_network
    Boolean? location_media
    String dcm_file_in
    String dcm_file_out
  }
  command <<<
    dcmpsmk \
      ~{dcm_file_in} \
      ~{dcm_file_out} \
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
      ~{if (voi_ignore) then "--voi-ignore" else ""} \
      ~{if (curve_ignore) then "--curve-ignore" else ""} \
      ~{if (overlay_ignore) then "--overlay-ignore" else ""} \
      ~{if (shutter_ignore) then "--shutter-ignore" else ""} \
      ~{if (plut_ignore) then "--plut-ignore" else ""} \
      ~{if (location_none) then "--location-none" else ""} \
      ~{if (location_network) then "--location-network" else ""} \
      ~{if (location_media) then "--location-media" else ""}
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
    _readxferauto_use: "=  --read-xfer-auto       use TS recognition (default)"
    read_xfer_detect: "ignore TS specified in the file meta header"
    read_xfer_little: "read with explicit VR little endian TS"
    read_xfer_big: "read with explicit VR big endian TS"
    read_xfer_implicit: "read with implicit VR little endian TS"
    voi_ignore: "ignore VOI LUT and window center/width"
    curve_ignore: "ignore curve data"
    overlay_ignore: "ignore overlays"
    shutter_ignore: "ignore shutter"
    plut_ignore: "ignore presentation LUT shape"
    location_none: "image reference without location (default)"
    location_network: "[a]etitle: string\\nimage located at application entity a"
    location_media: "[f]ilesetID, fileset[UID]: string\\nimage located on storage medium"
    dcm_file_in: "DICOM image file(s) to be read"
    dcm_file_out: "DICOM presentation state file to be created"
  }
  output {
    File out_stdout = stdout()
  }
}