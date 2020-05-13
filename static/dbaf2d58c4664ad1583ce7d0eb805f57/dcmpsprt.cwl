class: CommandLineTool
id: dcmpsprt.cwl
inputs:
- id: dcm_file_in
  doc: DICOM image file(s) to be printed
  type: string
  inputBinding:
    position: 0
- id: q
  doc: --quiet                quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: --verbose              verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: --debug                debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: ll
  doc: '--log-level            [l]evel: string constant (fatal, error, warn, info,
    debug, trace) use level l for the logger'
  type: boolean
  inputBinding:
    prefix: -ll
- id: lc
  doc: '--log-config           [f]ilename: string use config file f for the logger'
  type: boolean
  inputBinding:
    prefix: -lc
- id: c
  doc: '--config               [f]ilename: string process using settings from configuration
    file f'
  type: boolean
  inputBinding:
    prefix: -c
- id: p
  doc: '--printer              [n]ame: string (default: 1st printer in cfg file) select
    printer with identifier n from cfg file'
  type: boolean
  inputBinding:
    prefix: -p
- id: s
  doc: --spool                spool print job to DICOM printer --nospool              do
    not spool print job to DICOM printer (default)
  type: boolean
  inputBinding:
    prefix: -s
- id: portrait
  doc: set portrait orientation
  type: boolean
  inputBinding:
    prefix: --portrait
- id: landscape
  doc: set landscape orientation
  type: boolean
  inputBinding:
    prefix: --landscape
- id: default_orientation
  doc: use printer default (default)
  type: boolean
  inputBinding:
    prefix: --default-orientation
- id: trim
  doc: set trim on
  type: boolean
  inputBinding:
    prefix: --trim
- id: no_trim
  doc: set trim off
  type: boolean
  inputBinding:
    prefix: --no-trim
- id: default_trim
  doc: use printer default (default)
  type: boolean
  inputBinding:
    prefix: --default-trim
- id: request_decimate
  doc: request decimate
  type: boolean
  inputBinding:
    prefix: --request-decimate
- id: request_crop
  doc: request crop
  type: boolean
  inputBinding:
    prefix: --request-crop
- id: request_fail
  doc: request failure
  type: boolean
  inputBinding:
    prefix: --request-fail
- id: default_request
  doc: use printer default (default)
  type: boolean
  inputBinding:
    prefix: --default-request
- id: default_plut
  doc: do not create presentation LUT (default)
  type: boolean
  inputBinding:
    prefix: --default-plut
- id: identity
  doc: set IDENTITY presentation LUT shape
  type: boolean
  inputBinding:
    prefix: --identity
- id: lin_od
  doc: set LIN OD presentation LUT shape
  type: boolean
  inputBinding:
    prefix: --lin-od
- id: plut
  doc: '[l]ut identifier: string add LUT [l] to print job'
  type: boolean
  inputBinding:
    prefix: --plut
- id: inverse_plut
  doc: render the inverse presentation LUT into the bitmap of the hardcopy grayscale
    image
  type: boolean
  inputBinding:
    prefix: --inverse-plut
- id: illumination
  doc: '[v]alue: integer (0..65535) set illumination to v (in cd/m^2)'
  type: boolean
  inputBinding:
    prefix: --illumination
- id: reflection
  doc: '[v]alue: integer (0..65535) set reflected ambient light to v (in cd/m^2)'
  type: boolean
  inputBinding:
    prefix: --reflection
- id: copies
  doc: '[v]alue: integer (1..100, default: 1) set number of copies to v'
  type: boolean
  inputBinding:
    prefix: --copies
- id: medium_type
  doc: '[v]alue: string set medium type to v'
  type: boolean
  inputBinding:
    prefix: --medium-type
- id: destination
  doc: '[v]alue: string set film destination to v'
  type: boolean
  inputBinding:
    prefix: --destination
- id: label
  doc: '[v]alue: string set film session label to v'
  type: boolean
  inputBinding:
    prefix: --label
- id: priority
  doc: '[v]alue: string set print priority to v'
  type: boolean
  inputBinding:
    prefix: --priority
- id: owner
  doc: '[v]alue: string set film session owner ID to v'
  type: boolean
  inputBinding:
    prefix: --owner
- id: pl
  doc: --print-no-lighting    do not prepend illumination to annotation
  type: boolean
  inputBinding:
    prefix: -pl
- id: l
  doc: "--layout               [c]olumns [r]ows: integer (default: 1 1) use 'STANDARD\\\
    c,r' image display format --filmsize             [v]alue: string set film size\
    \ ID to v --magnification        [v]alue: string set magnification type to v --smoothing\
    \            [v]alue: string set smoothing type to v --configinfo           [v]alue:\
    \ string set configuration information to v --resolution           [v]alue: string\
    \ set requested resolution ID to v --border               [v]alue: string set\
    \ border density to v --empty-image          [v]alue: string set empty image density\
    \ to v --max-density          [v]alue: string set max density to v --min-density\
    \          [v]alue: string set min density to v --img-polarity         [v]alue:\
    \ string set image box polarity to v (NORMAL or REVERSE) --img-request-size  \
    \   [v]alue: string set requested image size to v (width in mm) --img-magnification\
    \    [v]alue: string set image box magnification type to v --img-smoothing   \
    \     [v]alue: string set image box smoothing type to v --img-configinfo     \
    \  [v]alue: string set image box configuration information to v"
  type: boolean
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmpsprt
