class: CommandLineTool
id: dcmpsprt.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean?
  inputBinding:
    prefix: --arguments
- id: in_quiet
  doc: quiet mode, print no warnings and errors
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: verbose mode, print processing details
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: debug mode, print debug information
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_log_level
  doc: "[l]evel: string constant\n(fatal, error, warn, info, debug, trace)\nuse level\
    \ l for the logger"
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_config
  doc: "[f]ilename: string\nuse config file f for the logger"
  type: boolean?
  inputBinding:
    prefix: --log-config
- id: in_config
  doc: "[f]ilename: string\nprocess using settings from configuration file f"
  type: boolean?
  inputBinding:
    prefix: --config
- id: in_printer
  doc: "[n]ame: string (default: 1st printer in cfg file)\nselect printer with identifier\
    \ n from cfg file"
  type: boolean?
  inputBinding:
    prefix: --printer
- id: in_spool
  doc: spool print job to DICOM printer
  type: boolean?
  inputBinding:
    prefix: --spool
- id: in_no_spool
  doc: do not spool print job to DICOM printer (default)
  type: boolean?
  inputBinding:
    prefix: --nospool
- id: in_portrait
  doc: set portrait orientation
  type: boolean?
  inputBinding:
    prefix: --portrait
- id: in_landscape
  doc: set landscape orientation
  type: boolean?
  inputBinding:
    prefix: --landscape
- id: in_default_orientation
  doc: use printer default (default)
  type: boolean?
  inputBinding:
    prefix: --default-orientation
- id: in_trim
  doc: set trim on
  type: boolean?
  inputBinding:
    prefix: --trim
- id: in_no_trim
  doc: set trim off
  type: boolean?
  inputBinding:
    prefix: --no-trim
- id: in_default_trim
  doc: use printer default (default)
  type: boolean?
  inputBinding:
    prefix: --default-trim
- id: in_request_decimate
  doc: request decimate
  type: boolean?
  inputBinding:
    prefix: --request-decimate
- id: in_request_crop
  doc: request crop
  type: boolean?
  inputBinding:
    prefix: --request-crop
- id: in_request_fail
  doc: request failure
  type: boolean?
  inputBinding:
    prefix: --request-fail
- id: in_default_request
  doc: use printer default (default)
  type: boolean?
  inputBinding:
    prefix: --default-request
- id: in_default_plut
  doc: do not create presentation LUT (default)
  type: boolean?
  inputBinding:
    prefix: --default-plut
- id: in_identity
  doc: set IDENTITY presentation LUT shape
  type: boolean?
  inputBinding:
    prefix: --identity
- id: in_lin_od
  doc: set LIN OD presentation LUT shape
  type: boolean?
  inputBinding:
    prefix: --lin-od
- id: in_plut
  doc: "[l]ut identifier: string\nadd LUT [l] to print job"
  type: boolean?
  inputBinding:
    prefix: --plut
- id: in_inverse_plut
  doc: "render the inverse presentation LUT into the\nbitmap of the hardcopy grayscale\
    \ image"
  type: boolean?
  inputBinding:
    prefix: --inverse-plut
- id: in_illumination
  doc: "[v]alue: integer (0..65535)\nset illumination to v (in cd/m^2)"
  type: boolean?
  inputBinding:
    prefix: --illumination
- id: in_reflection
  doc: "[v]alue: integer (0..65535)\nset reflected ambient light to v (in cd/m^2)"
  type: boolean?
  inputBinding:
    prefix: --reflection
- id: in_copies
  doc: "[v]alue: integer (1..100, default: 1)\nset number of copies to v"
  type: boolean?
  inputBinding:
    prefix: --copies
- id: in_medium_type
  doc: "[v]alue: string\nset medium type to v"
  type: boolean?
  inputBinding:
    prefix: --medium-type
- id: in_destination
  doc: "[v]alue: string\nset film destination to v"
  type: boolean?
  inputBinding:
    prefix: --destination
- id: in_label
  doc: "[v]alue: string\nset film session label to v"
  type: boolean?
  inputBinding:
    prefix: --label
- id: in_priority
  doc: "[v]alue: string\nset print priority to v"
  type: boolean?
  inputBinding:
    prefix: --priority
- id: in_owner
  doc: "[v]alue: string\nset film session owner ID to v"
  type: boolean?
  inputBinding:
    prefix: --owner
- id: in_no_annotation
  doc: do not create annotation (default)
  type: boolean?
  inputBinding:
    prefix: --no-annotation
- id: in_annotation
  doc: "[t]ext: string\ncreate annotation with text t"
  type: boolean?
  inputBinding:
    prefix: --annotation
- id: in_print_no_date
  doc: do not prepend date/time to annotation
  type: boolean?
  inputBinding:
    prefix: --print-no-date
- id: in_print_no_name
  doc: do not prepend printer name to annotation
  type: boolean?
  inputBinding:
    prefix: --print-no-name
- id: in_print_no_lighting
  doc: do not prepend illumination to annotation
  type: boolean?
  inputBinding:
    prefix: --print-no-lighting
- id: in_layout
  doc: "[c]olumns [r]ows: integer (default: 1 1)\nuse 'STANDARD\\c,r' image display\
    \ format"
  type: boolean?
  inputBinding:
    prefix: --layout
- id: in_film_size
  doc: "[v]alue: string\nset film size ID to v"
  type: boolean?
  inputBinding:
    prefix: --filmsize
- id: in_magnification
  doc: "[v]alue: string\nset magnification type to v"
  type: boolean?
  inputBinding:
    prefix: --magnification
- id: in_smoothing
  doc: "[v]alue: string\nset smoothing type to v"
  type: boolean?
  inputBinding:
    prefix: --smoothing
- id: in_config_info
  doc: "[v]alue: string\nset configuration information to v"
  type: boolean?
  inputBinding:
    prefix: --configinfo
- id: in_resolution
  doc: "[v]alue: string\nset requested resolution ID to v"
  type: boolean?
  inputBinding:
    prefix: --resolution
- id: in_border
  doc: "[v]alue: string\nset border density to v"
  type: boolean?
  inputBinding:
    prefix: --border
- id: in_empty_image
  doc: "[v]alue: string\nset empty image density to v"
  type: boolean?
  inputBinding:
    prefix: --empty-image
- id: in_max_density
  doc: "[v]alue: string\nset max density to v"
  type: boolean?
  inputBinding:
    prefix: --max-density
- id: in_min_density
  doc: "[v]alue: string\nset min density to v"
  type: boolean?
  inputBinding:
    prefix: --min-density
- id: in_img_polarity
  doc: "[v]alue: string\nset image box polarity to v (NORMAL or REVERSE)"
  type: boolean?
  inputBinding:
    prefix: --img-polarity
- id: in_img_request_size
  doc: "[v]alue: string\nset requested image size to v (width in mm)"
  type: boolean?
  inputBinding:
    prefix: --img-request-size
- id: in_img_magnification
  doc: "[v]alue: string\nset image box magnification type to v"
  type: boolean?
  inputBinding:
    prefix: --img-magnification
- id: in_img_smoothing
  doc: "[v]alue: string\nset image box smoothing type to v"
  type: boolean?
  inputBinding:
    prefix: --img-smoothing
- id: in_img_config_info
  doc: "[v]alue: string\nset image box configuration information to v\n"
  type: boolean?
  inputBinding:
    prefix: --img-configinfo
- id: in_dcm_file_in
  doc: DICOM image file(s) to be printed
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dcmpsprt
