version 1.0

task Dcmpsprt {
  input {
    Boolean? _quiet_quiet
    Boolean? _verbose_verbose
    Boolean? _debug_debug
    Boolean? ll
    Boolean? lc
    Boolean? _config_ilename
    Boolean? _printer_ame
    Boolean? _spool_spool
    Boolean? portrait
    Boolean? landscape
    Boolean? default_orientation
    Boolean? trim
    Boolean? no_trim
    Boolean? default_trim
    Boolean? request_decimate
    Boolean? request_crop
    Boolean? request_fail
    Boolean? default_request
    Boolean? default_plut
    Boolean? identity
    Boolean? lin_od
    Boolean? plut
    Boolean? inverse_plut
    Boolean? illumination
    Boolean? reflection
    Boolean? copies
    Boolean? medium_type
    Boolean? destination
    Boolean? label
    Boolean? priority
    Boolean? owner
    Boolean? pl
    Boolean? _layout_alue
    String dcm_file_in
  }
  command <<<
    dcmpsprt \
      ~{dcm_file_in} \
      ~{true="-q" false="" _quiet_quiet} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="-ll" false="" ll} \
      ~{true="-lc" false="" lc} \
      ~{true="-c" false="" _config_ilename} \
      ~{true="-p" false="" _printer_ame} \
      ~{true="-s" false="" _spool_spool} \
      ~{true="--portrait" false="" portrait} \
      ~{true="--landscape" false="" landscape} \
      ~{true="--default-orientation" false="" default_orientation} \
      ~{true="--trim" false="" trim} \
      ~{true="--no-trim" false="" no_trim} \
      ~{true="--default-trim" false="" default_trim} \
      ~{true="--request-decimate" false="" request_decimate} \
      ~{true="--request-crop" false="" request_crop} \
      ~{true="--request-fail" false="" request_fail} \
      ~{true="--default-request" false="" default_request} \
      ~{true="--default-plut" false="" default_plut} \
      ~{true="--identity" false="" identity} \
      ~{true="--lin-od" false="" lin_od} \
      ~{true="--plut" false="" plut} \
      ~{true="--inverse-plut" false="" inverse_plut} \
      ~{true="--illumination" false="" illumination} \
      ~{true="--reflection" false="" reflection} \
      ~{true="--copies" false="" copies} \
      ~{true="--medium-type" false="" medium_type} \
      ~{true="--destination" false="" destination} \
      ~{true="--label" false="" label} \
      ~{true="--priority" false="" priority} \
      ~{true="--owner" false="" owner} \
      ~{true="-pl" false="" pl} \
      ~{true="-l" false="" _layout_alue}
  >>>
  parameter_meta {
    _quiet_quiet: "--quiet                quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose              verbose mode, print processing details"
    _debug_debug: "--debug                debug mode, print debug information"
    ll: "--log-level            [l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    lc: "--log-config           [f]ilename: string use config file f for the logger"
    _config_ilename: "--config               [f]ilename: string process using settings from configuration file f"
    _printer_ame: "--printer              [n]ame: string (default: 1st printer in cfg file) select printer with identifier n from cfg file"
    _spool_spool: "--spool                spool print job to DICOM printer --nospool              do not spool print job to DICOM printer (default)"
    portrait: "set portrait orientation"
    landscape: "set landscape orientation"
    default_orientation: "use printer default (default)"
    trim: "set trim on"
    no_trim: "set trim off"
    default_trim: "use printer default (default)"
    request_decimate: "request decimate"
    request_crop: "request crop"
    request_fail: "request failure"
    default_request: "use printer default (default)"
    default_plut: "do not create presentation LUT (default)"
    identity: "set IDENTITY presentation LUT shape"
    lin_od: "set LIN OD presentation LUT shape"
    plut: "[l]ut identifier: string add LUT [l] to print job"
    inverse_plut: "render the inverse presentation LUT into the bitmap of the hardcopy grayscale image"
    illumination: "[v]alue: integer (0..65535) set illumination to v (in cd/m^2)"
    reflection: "[v]alue: integer (0..65535) set reflected ambient light to v (in cd/m^2)"
    copies: "[v]alue: integer (1..100, default: 1) set number of copies to v"
    medium_type: "[v]alue: string set medium type to v"
    destination: "[v]alue: string set film destination to v"
    label: "[v]alue: string set film session label to v"
    priority: "[v]alue: string set print priority to v"
    owner: "[v]alue: string set film session owner ID to v"
    pl: "--print-no-lighting    do not prepend illumination to annotation"
    _layout_alue: "--layout               [c]olumns [r]ows: integer (default: 1 1) use 'STANDARD\c,r' image display format --filmsize             [v]alue: string set film size ID to v --magnification        [v]alue: string set magnification type to v --smoothing            [v]alue: string set smoothing type to v --configinfo           [v]alue: string set configuration information to v --resolution           [v]alue: string set requested resolution ID to v --border               [v]alue: string set border density to v --empty-image          [v]alue: string set empty image density to v --max-density          [v]alue: string set max density to v --min-density          [v]alue: string set min density to v --img-polarity         [v]alue: string set image box polarity to v (NORMAL or REVERSE) --img-request-size     [v]alue: string set requested image size to v (width in mm) --img-magnification    [v]alue: string set image box magnification type to v --img-smoothing        [v]alue: string set image box smoothing type to v --img-configinfo       [v]alue: string set image box configuration information to v"
    dcm_file_in: "DICOM image file(s) to be printed"
  }
}