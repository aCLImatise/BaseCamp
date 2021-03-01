class: CommandLineTool
id: dcmj2pnm.cwl
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
- id: in_read_dataset
  doc: read data set without file meta information
  type: boolean?
  inputBinding:
    prefix: --read-dataset
- id: in__readxferauto_use
  doc: =   --read-xfer-auto      use TS recognition (default)
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_read_xfer_detect
  doc: ignore TS specified in the file meta header
  type: boolean?
  inputBinding:
    prefix: --read-xfer-detect
- id: in_read_xfer_little
  doc: read with explicit VR little endian TS
  type: boolean?
  inputBinding:
    prefix: --read-xfer-little
- id: in_read_xfer_big
  doc: read with explicit VR big endian TS
  type: boolean?
  inputBinding:
    prefix: --read-xfer-big
- id: in_read_xfer_implicit
  doc: read with implicit VR little endian TS
  type: boolean?
  inputBinding:
    prefix: --read-xfer-implicit
- id: in_ignore_aspect
  doc: ignore pixel aspect ratio when scaling
  type: boolean?
  inputBinding:
    prefix: --ignore-aspect
- id: in_no_interpolation
  doc: no interpolation when scaling
  type: boolean?
  inputBinding:
    prefix: --no-interpolation
- id: in_no_scaling
  doc: no scaling, ignore pixel aspect ratio (default)
  type: boolean?
  inputBinding:
    prefix: --no-scaling
- id: in_no_modality
  doc: ignore stored modality LUT transformation
  type: boolean?
  inputBinding:
    prefix: --no-modality
- id: in_no_windowing
  doc: no VOI windowing (default)
  type: boolean?
  inputBinding:
    prefix: --no-windowing
- id: in_no_overlays
  doc: do not display overlays
  type: boolean?
  inputBinding:
    prefix: --no-overlays
- id: in_no_interlace
  doc: create non-interlaced file
  type: boolean?
  inputBinding:
    prefix: --nointerlace
- id: in_meta_none
  doc: no PNG file meta information
  type: boolean?
  inputBinding:
    prefix: --meta-none
- id: in_image_info
  doc: print image details (requires verbose mode)
  type: boolean?
  inputBinding:
    prefix: --image-info
- id: in_no_output
  doc: do not create any output (useful with -im)
  type: boolean?
  inputBinding:
    prefix: --no-output
- id: in_dcm_file_in
  doc: DICOM input filename to be converted
  type: string
  inputBinding:
    position: 0
- id: in_bitmap_out
  doc: 'output filename to be written (default: stdout)'
  type: string
  inputBinding:
    position: 1
- id: in_integer
  doc: 'use interpolation when scaling (1..4, def: 1)'
  type: long
  inputBinding:
    position: 0
- id: in_interpretation
  doc: +Mp   --accept-palettes     accept incorrect palette attribute tags
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
- dcmj2pnm
