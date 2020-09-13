version 1.0

task Dcmpsmk {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? ll
    Boolean? lc
    Boolean? _readdataset_read
    Boolean? _readxferauto_use
    Boolean? read_xfer_detect
    Boolean? read_xfer_little
    Boolean? read_xfer_big
    Boolean? read_xfer_implicit
    Boolean? _voiignore_ignore
    Boolean? _curveignore_ignore
    Boolean? _overlayignore_ignore
    Boolean? _shutterignore_ignore
    Boolean? _plutignore_shape
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
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (ll) then "-ll" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if (_readdataset_read) then "-f" else ""} \
      ~{if (_readxferauto_use) then "-t" else ""} \
      ~{if (read_xfer_detect) then "--read-xfer-detect" else ""} \
      ~{if (read_xfer_little) then "--read-xfer-little" else ""} \
      ~{if (read_xfer_big) then "--read-xfer-big" else ""} \
      ~{if (read_xfer_implicit) then "--read-xfer-implicit" else ""} \
      ~{if (_voiignore_ignore) then "-V" else ""} \
      ~{if (_curveignore_ignore) then "-c" else ""} \
      ~{if (_overlayignore_ignore) then "-o" else ""} \
      ~{if (_shutterignore_ignore) then "-s" else ""} \
      ~{if (_plutignore_shape) then "-p" else ""} \
      ~{if (location_none) then "--location-none" else ""} \
      ~{if (location_network) then "--location-network" else ""} \
      ~{if (location_media) then "--location-media" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet                quiet mode, print no warnings and errors"
    _verbose_details: "--verbose              verbose mode, print processing details"
    _debug_information: "--debug                debug mode, print debug information"
    ll: "--log-level            [l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    lc: "--log-config           [f]ilename: string\\nuse config file f for the logger"
    _readdataset_read: "--read-dataset         read data set without file meta information"
    _readxferauto_use: "=  --read-xfer-auto       use TS recognition (default)"
    read_xfer_detect: "ignore TS specified in the file meta header"
    read_xfer_little: "read with explicit VR little endian TS"
    read_xfer_big: "read with explicit VR big endian TS"
    read_xfer_implicit: "read with implicit VR little endian TS"
    _voiignore_ignore: "--voi-ignore           ignore VOI LUT and window center/width"
    _curveignore_ignore: "--curve-ignore         ignore curve data"
    _overlayignore_ignore: "--overlay-ignore       ignore overlays"
    _shutterignore_ignore: "--shutter-ignore       ignore shutter"
    _plutignore_shape: "--plut-ignore          ignore presentation LUT shape"
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