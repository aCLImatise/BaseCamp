version 1.0

task Dcmpsmk {
  input {
    Boolean? _quiet_quiet
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
    Boolean? _voiignore_ignore
    Boolean? _curveignore_ignore
    Boolean? _overlayignore_ignore
    Boolean? _shutterignore_ignore
    Boolean? _plutignore_ignore
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
      ~{true="-q" false="" _quiet_quiet} \
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
      ~{true="-V" false="" _voiignore_ignore} \
      ~{true="-c" false="" _curveignore_ignore} \
      ~{true="-o" false="" _overlayignore_ignore} \
      ~{true="-s" false="" _shutterignore_ignore} \
      ~{true="-p" false="" _plutignore_ignore} \
      ~{true="--location-none" false="" location_none} \
      ~{true="--location-network" false="" location_network} \
      ~{true="--location-media" false="" location_media}
  >>>
  parameter_meta {
    _quiet_quiet: "--quiet                quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose              verbose mode, print processing details"
    _debug_debug: "--debug                debug mode, print debug information"
    ll: "--log-level            [l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    lc: "--log-config           [f]ilename: string use config file f for the logger"
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
    _plutignore_ignore: "--plut-ignore          ignore presentation LUT shape"
    location_none: "image reference without location (default)"
    location_network: "[a]etitle: string image located at application entity a"
    location_media: "[f]ilesetID, fileset[UID]: string image located on storage medium"
    dcm_file_in: "DICOM image file(s) to be read"
    dcm_file_out: "DICOM presentation state file to be created"
  }
}